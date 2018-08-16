/*----------------------------------------------------------------------------
 * Description:   Methods for bridging to an external entity.
 *
 * External Entity:  Configuration (CONFIG)
 * 
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "Sumo_sys_types.h"
#include "EV3_CONFIG_bridge.h"

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#define PROP_NAME_LEN 32
#define NUM_PROPS     8

#define CONFIG_FILE   "ev3rt/etc/sumo_config.txt"

struct property {
  char name[PROP_NAME_LEN];
  int  value;
};

static struct property properties[NUM_PROPS];

int read_line(FILE * file, char * dst, size_t len) {
    int c, i = 0;
    while ((c = fgetc(file)) != EOF) {
      if (c < 0) {
        return c;        // error handling
      }
      if (i+1 == len) {  // reached end of buffer
        dst[i] = '\0';
        break;
      }
      if (c == '\n') {   // reached end of line
        dst[i] = '\0';
        break;
      }
      dst[i] = (char)c;
      i++;
    }
    return i;
}

void load_properties() {
  FILE * config_file = fopen(CONFIG_FILE, "r");
  int retval, i = 0;
  char buf[256];
  memset(&properties, 0, sizeof(struct property) * NUM_PROPS);
  if (NULL != config_file) {
    while((retval = read_line(config_file, buf, 256)) > 0) {
      char * comptr = strstr(buf, ",");
      if (i < NUM_PROPS && NULL != comptr) {
        *comptr = '\0';
        strcpy(properties[i].name, buf);
        properties[i].value = atoi(comptr+1);
        i++;
      }
      else break;
    }
    fclose(config_file);
  }
}

void serialize_properties() {
  if (strcmp("", properties[0].name) != 0) {
    FILE * config_file = fopen(CONFIG_FILE, "w");
    for (int i = 0; i < NUM_PROPS; i++) {
      if (strcmp("", properties[i].name) == 0) break; // end of properties
      else fprintf(config_file, "%s,%d\n", properties[i].name, properties[i].value);
    }
    fclose(config_file);
  }
}

/*
 * Bridge:  setIntegerProperty
 */
void
EV3_CONFIG_setIntegerProperty( c_t p_name[ESCHER_SYS_MAX_STRING_LEN], const i_t p_value )
{
  load_properties();
  for (int i = 0; i < NUM_PROPS; i++) {
    if (strcmp(p_name, properties[i].name) == 0) {
      properties[i].value = p_value;
      break;
    }
    else if (strcmp("", properties[i].name) == 0) {
      strcpy(properties[i].name, p_name);
      properties[i].value = p_value;
      break;
    }
  }
  serialize_properties();
}


/*
 * Bridge:  getIntegerProperty
 */
bool
EV3_CONFIG_getIntegerProperty( c_t p_name[ESCHER_SYS_MAX_STRING_LEN], i_t * p_value )
{
  load_properties();
  for (int i = 0; i < NUM_PROPS; i++) {
    if (strcmp(p_name, properties[i].name) == 0) {
      *p_value = properties[i].value;
      return TRUE;
    }
  }
  return FALSE;
}


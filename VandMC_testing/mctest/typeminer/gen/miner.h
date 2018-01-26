#define TYPEMINER_MAX_LABEL_LEN 1024

// define typeminer data structures
struct typeminer_list_node {
  char *                        label;
  struct typeminer_list_node *  next;
};

struct typeminer_label_list {
  int                           count;
  struct typeminer_list_node *  head;
};

// define global variables
extern struct typeminer_label_list *  typeminer_labels;
extern bool                           typeminer_parse_error;

// define list API
void typeminer_label_list_dispose( struct typeminer_label_list * );
void typeminer_list_node_dispose( struct typeminer_list_node * );
struct typeminer_label_list * typeminer_label_list_init();
void typeminer_add_label( struct typeminer_label_list *, char * label );

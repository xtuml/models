//
// UK Crown Copyright (c) 2019. All rights reserved.
//

state TAGS::Check_On_Active_Object.Self_Terminate () is
#[] = TAGS3::Delete_Report_Domain[]

delete this

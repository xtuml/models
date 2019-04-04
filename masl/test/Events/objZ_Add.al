//
// UK Crown Copyright (c) 2019. All rights reserved.
//

state Events::Object_Z.Add () is
temp = this.Int_Att
temp = temp + 1

this.Int_Att = temp

generate objZ2:Finish() to this
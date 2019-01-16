# remote.configurations
This repository stores the configuration files used on various cupprint servers, most of which we host ourselves using Digital Ocean.

## folder naming conventions
In general, folders are as you speak. The location is not interesting for meetings (with non-technical users). Here we talk about the topic and the project.
"At CupPrint on the german site in staging, we find ..."
 The main areas are omitted. "On CupPrint, we find ..." is .com and live.

A system-administrator can find out the IP with topic and location and thus the server (without a Mapping-Table in Readme or confluence).

### scheme
[Topic] ( + '.' + [Location] ) + '-' + [Projectname] + ' - ' + [Branch]

Topic: cupprint, huhtamaki, ...
Location: .com, .fi, .de, .ru, ...
Projectname: cupprint, cupdesigner, api, ...
Branch: staging, preview (live is main-area)

### Examples
"staging.cupprint.com" = "cupprint - staging"
Info: '.com' is the Main-TPL and can be omitted.

"designer.cupprint.com" = "cupprint-designer"
Info: This is the Master-Banch "live. ...". It is the Main-Branch and can be omitted. (Main-TPL can be omitted too.)


## Applications
|   Application   |   Domain   |   Folder   |   Note   |
| ------------- | ------------- | ------------- | ------------- |
| CupPrint API | api.cupprint.com | cupprint-api | |
| CSR | csr.cupprint.com | cupprint-csr | Wordpress environment that allows customer service representatives (CSR's) to manage designs |
| Cloud Lab *Live* | designer.cupprint.com | cupprint-designer | this server hosted by Cloud Lab, is the live version used for 3D designing of cups |
| Cloud Lab *Staging* | cupprint-live-oghi2.your-printq.com | cupprint-designer - staging | development version of the 3D design workspace hosted by cloud lab |
| Cloud Lab *Preview* | preview.cupdesigner.com | cupprint-designer - preview | development version of the 3D design workspace hosted by cloud lab |
| Cloud Lab US | designer.cupprint.us | cupprint-designer | this server hosted by Cloud Lab, is the live version used for 3D designing of cups |
| CupPrint Europe | cupprint.com | cupprint | live version of https://cupprint.com |
| CupPrint Europe *Staging* | staging.cupprint.com | cupprint - staging | staging version of https://staging.cupprint.com |
| CupPrint DE | cupprint.de | cupprint-de | live version of https://cupprint.com/de/ |
| CupPrint IE | cupprint.ie | cupprint-ie | live version of https://cupprint.ie |
| CupPrint UK | cupprint.co.uk | cupprint-uk | live version of https://cupprint.co.uk |
| CupPrint USA | us.cupprint.com | cupprint-us | live version of https://us.cupprint.com |
| CupPrint (external) |   | cupprint-external | Various external CupPrint projects |
| CupPrint (mu) |   | cupprint-mu | |
| Huhtamaki Showcase | showcase.cupprint.com | cupprint-showcase | Showcase for https://showcase.cupprint.com/ |

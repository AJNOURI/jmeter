
*Alpha version

Jmeter in non-gui mode to stress a web servers using spoofed source ip list.

A test plan and a source ip file are provided inside the container.

Non-gui mode command:
> jmeter -n -t HTTP-Request.jmx  -j testplan_01.log



The spoofed IP addresses need to be configured on the system as secondary ip addresses beside the main IP, the files are already generated for you with a preconfigured subnet
- permip.conf
- tempip.conf
- source-ip.txt

#### Customize the spoofed source addresses:
If you want to choose a different spoofed addresses, you will have to regenerate the previous files using the provided python scripts outside of the container and copy paste them back to the container console:

- Generate permanent secondary ips to include in **/etc/network/interfaces**:
> python genip.py > permip.conf


- Or generate temporary secondary ip commands to run from the cli:
> python staticgenipconf.py > tempip.conf


- Generate the file containing the list of spoofing source IPs included in the test plan:
> python genipconf.py > source-ip.txt

#### Note:
Jmeter GUI configuration used to generate the jmx test plane file:
The test plan is built from GUI mode (for example from your docker host)

![](http://i.stack.imgur.com/ZBsRl.png) 

![](http://i.stack.imgur.com/GSwoC.png) 


![](http://i.stack.imgur.com/lq296.png) 

Now save the test plane into **HTTP-Request.jmx** file

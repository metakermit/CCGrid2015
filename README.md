Elastic-memory controller
=================================================

This folder contains source code associated with the following article submitted to [CCGrid2015](http://cloud.siat.ac.cn/ccgrid2015/): 
> Soodeh Farokhi, Pooyan Jamshidi, Drazen Lucanin and Ivona Brandic; "Performance Adaptation of Cloud-based Applications via Memory Elasticity: A Control-theoretic Approach". 

Usage 
================================================
The experimental evalution of this paper, [httpmon tool](https://github.com/cloud-control/httpmon) is responsible to send the [prepared workload traces](https://github.com/Soodeh/CCGrid2015/tree/master/Workloads) and monitor the application response time. The server side is [RUBBoS benchmark application](https://github.com/cristiklein/brownout/tree/rubbos-icse2014/PHP) controlled by the elastic-memory controller. 
The evaluation process is started with feeding the workload traces into the httpmon by two [used scripts](https://github.com/Soodeh/CCGrid2015/tree/master/httpmon-scripts), and based on the workload values at each iteration, httpmon emulates a specific number of concurrent users to send the http GET requests to RUBBoS, and meanwhile calculates the requests' response time statistics of concurrent users at each iteration. 

Structure
================================================
The [workload folder](https://github.com/Soodeh/CCGrid2015/tree/master/Workloads) includes two IPython notebooks, one for [Wikipedia workload trace](http://nbviewer.ipython.org/github/Soodeh/CCGrid2015/blob/master/Workloads/user_profiles.wikipedia-soodeh.ipynb) and the other one for the [WorldCup'98 workload trace](http://nbviewer.ipython.org/github/Soodeh/CCGrid2015/blob/master/Workloads/user_profiles.worldcup-soodeh.ipynb), which were used at the experimental evaluation of this paper. Each notebook consists of the preparation code of related workload. Afterwards, we used the extraced values of these workloads to creat two scripts, placed at the [script folder](https://github.com/Soodeh/CCGrid2015/tree/master/httpmon-scripts), as the input file of the httpmon tool to emulate these pattern at runtime.

For questions or comments, please contact Soodeh Farokhi <soodeh.farokhi@tuwien.ac.at>.

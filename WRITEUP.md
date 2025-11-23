Analyze, choose, and justify the appropriate resource option for deploying the app.
For this application I have chosen to use a Azure App Service. This is because :

This allows to be to quickly start with deploying the application without thinking about the infrastructure overhead. I do not need to maintain the OS or Python or configure the web server manually. From Github deployment operations is one click.
I can use a consumption based pricing model which makes it cheaper maintain the app
I can make a seamless connection to SQL database and blob storage, and configure the environment variables easily via portal.
Assess app changes that would change your decision.
I would look at using Azure VM instead of Azure App Service if I needed in the application to:

If there was a need to use/run this application in a private subnet or with VPN
If there was a need to use a company active directory
If there was a need to handle large incomming traffic
If there was a need to use specialized control to use Docker/Kubernetes.

Below are the relative merits and demerits of considering WebApp service and VM service.

Consideration	      Web App (PaaS)	    Virtual Machine (IaaS)
OS Control	          ❌ No	              ✅ Full
Scalability	          Easy, built-in	  Complex, manual
Deployment	          Very simple	      Manual setup
Security	            Managed	          Developer need to handle it
Cost	                Lower	            Higher
Flexibility	          Moderate	          Very high
Best for	            Modern web apps	    Custom/legacy workloads



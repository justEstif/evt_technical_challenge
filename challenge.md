# EVT Technology Challenge 2021

## Goal

1. create an environment to display a single webpage
2. a single command or script that will instantiate the automation of building a secure webserver that will display a single [webpage](https://bitbucket.org/bjgiller/evt-tech-challenge/raw/master/evt-web.html).

- The webpage must be displayed from a local-source and not from git (must be downloaded from git).
- the OS build doesn't need to be automated, but can be something like docker, vagrant, vbox or cloud service(s)
- If Docker is used, you do not need any Config-Management tools.

## Completion

- Single entry point to start automation process
- All supporting code to automate process
- Documentation of how the solution works and why you chose the specific tools in use
- A viewable webpage provided above on a secure port (self-signed certificate OK)

## Requirements

- keeping in mind re-usability and portability of the solution.
- You must use at least one of the technologies from each list below

  - webserver
    - Nginx
    - Httpd/Apache
    - Tomcat
    - IIS
    - Python Simple-Http server
  - OS:
    - Linux
    - Windows
    - Other(provide reasoning)
  - Config Management:
    - Ansible
    - Puppet
    - Chef
    - Code (Java, Python, C#, C, C++, Ruby, Go, Bash)
  - Optional:
    - Vagrant
    - Terraform
    - Docker

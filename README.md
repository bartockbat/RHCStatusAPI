# RHCStatusAPI
Directions for using this script:

1. Clone this repo on your local machine - git clone https://github.com/bartockbat/RHCStatusAPI.git
2. You will need to modify 3 files to have this script work - *pid.txt, docker_image_digest.txt, and secret.txt*
3. For the **pid.txt**, you would need to put your pxxxYYYYzzzzAAAAbbbbCCC id in there - you will find it in your *project*.
4. For the **docker_image_digest.txt**, you would need to put your **sha256:aaaBBBBccccDDD1112222333** in here. You will find this value in one of two places - when you push your container, you will see it as a message at your command line or you will see it if you click on the *view* link when a container is scanning or has been scanned. 
5. For your **secret.txt**, you would need to put your registry key - it's a long string in the *push container* section of your project.
6. Once you have put these values in these three files, run the script **container-status.sh**
7. If your container passes (does not need to be refreshed) you will see:
``{``
``    "rebuild": "false"``
``}``
8. If your container *freshness* is in question, you will see:
``{``
``    "rebuild": "true"``
``}``



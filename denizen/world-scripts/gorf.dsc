task_gorf_check:
    type: task
    script:
    - if <server.has_flag[gorfcooldown]>:
        - run task_gorf_wait
    - else:
        - run task_gorf_title

task_gorf_wait:
    type: task
    script:
    - narrate "<&c>Not gorf time yet"

task_gorf_title:
    type: task
    script:
    - flag server gorfcooldown:1 expire:5m
    - title 3s title:<element[GORF].color[green].bold> targets:<server.online_players>
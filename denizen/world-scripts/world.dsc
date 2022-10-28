world_script:
    type: world
    events:
        after player right clicks warped_button:
            - if <player.location.chunk.equals[<chunk[-15,21,world]>]>:
                - run task_gorf_check

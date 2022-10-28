adv_exploration:
    type: world
    events:
        after player enters bullfrog:
            - adjust <player> award_advancement:clovercraft:cities/bullfrog_bayou
            - run adv_explore_check
        after player enters evercrest:
            - adjust <player> award_advancement:clovercraft:cities/evercrest
            - run adv_explore_check
        after player enters grayhelm:
            - adjust <player> award_advancement:clovercraft:cities/grayhelm
            - run adv_explore_check
        after player enters serpenfurr:
            - adjust <player> award_advancement:clovercraft:cities/serpenfurr
            - run adv_explore_check
        after player kills chicken:
            - run adv_chicken_check
        after player kills player:
            - run adv_nice_check
        after player signs book:
            - run adv_archivist
        after player kills ghast:
            - adjust <player> award_advancement:clovercraft:a_sign
        after ghast kills player:
            - adjust <player> award_advancement:clovercraft:answers

adv_explore_check:
    type: task
    script:
        - if <player.has_advancement[clovercraft:cities/bullfrog_bayou]> && <player.has_advancement[clovercraft:cities/evercrest]> && <player.has_advancement[clovercraft:cities/grayhelm]> && <player.has_advancement[clovercraft:cities/serpenfurr]>:
            - if !<player.has_advancement[clovercraft:cities/well_traveled]>:
                - adjust <player> award_advancement:clovercraft:cities/well_traveled

adv_chicken_check:
    type: task
    script:
        - if <player.has_flag[chickens]>:
            - flag <player> chickens:++
        - else:
            - flag <player> chickens:1
        - if <player.flag[chickens].is_more_than_or_equal_to[100]>:
            - adjust <player> award_advancement:clovercraft:watch_your_back

adv_nice_check:
    type: task
    script:
        - if <player.has_flag[kills]>:
            - flag <player> kills:++
        - else:
            - flag <player> kills:1
        - if <player.flag[kills].is_more_than_or_equal_to[69]>:
            - adjust <player> award_advancement:clovercraft:nice_friends

adv_archivist:
    type: task
    script:
        - if <player.has_flag[archivist]>:
            - flag <player> archivist:++
        - else:
            - flag <player> archivist:1
        - if <player.flag[archivist].is_more_than_or_equal_to[13]>:
            - adjust <player> award_advancement:clovercraft:archivist
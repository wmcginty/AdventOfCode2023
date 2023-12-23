//
//  Input.swift
//  Day23
//
//  Created by Will McGinty on 12/24/22.
//

import Foundation

extension String {

    static let testInput = """
    #.#####################
    #.......#########...###
    #######.#########.#.###
    ###.....#.>.>.###.#.###
    ###v#####.#v#.###.#.###
    ###.>...#.#.#.....#...#
    ###v###.#.#.#########.#
    ###...#.#.#.......#...#
    #####.#.#.#######.#.###
    #.....#.#.#.......#...#
    #.#####.#.#.#########v#
    #.#...#...#...###...>.#
    #.#.#v#######v###.###v#
    #...#.>.#...>.>.#.###.#
    #####v#.#.###v#.#.###.#
    #.....#...#...#.#.#...#
    #.#########.###.#.#.###
    #...###...#...#...#.###
    ###.###.#.###v#####v###
    #...#...#.#.>.>.#.>.###
    #.###.###.#.###.#.#v###
    #.....###...###...#...#
    #####################.#
    """

    static let input = """
    #.###########################################################################################################################################
    #.###...#####...#.............#.......#...###...#...###...#.........#.......###...###...###...#...#...#...#.........###.......#...###.......#
    #.###.#.#####.#.#.###########.#.#####.#.#.###.#.#.#.###.#.#.#######.#.#####.###.#.###.#.###.#.#.#.#.#.#.#.#.#######.###.#####.#.#.###.#####.#
    #...#.#.#.....#.#.....#.......#.....#.#.#.###.#.#.#.###.#.#.#.......#.#.....#...#...#.#.....#.#.#.#.#.#.#.#.......#...#.#.....#.#...#.#.....#
    ###.#.#.#.#####.#####.#.###########.#.#.#.###.#.#.#.###.#.#.#.#######.#.#####.#####.#.#######.#.#.#.#.#.#.#######.###.#.#.#####.###.#.#.#####
    ###...#.#.....#.#...#.#.#...#.>.>.#.#...#...#.#...#.#...#...#...#...#.#...#...#...#.#.#.......#.#.#.#...#...#...#...#.#.#...#...#...#.#.#...#
    #######.#####.#.#.#.#.#.#.#.#.#v#.#.#######.#.#####.#.#########.#.#.#.###.#.###.#.#.#.#.#######.#.#.#######.#.#.###.#.#.###.#.###.###.#.#.#.#
    #.......#.....#...#...#...#...#.#...#.......#.#.....#.....#.....#.#.#...#...#...#...#.#.#.....#.#.#.......#...#.....#.#.#...#.#...#...#.#.#.#
    #.#######.#####################.#####.#######.#.#########.#.#####.#.###.#####.#######.#.#.###.#.#.#######.###########.#.#.###.#.###.###.#.#.#
    #.....###...............#.......#.....#...###.#.#...###...#.#...#.#.###...#...#...###.#.#...#.#.#.###...#...........#.#.#.#...#...#...#.#.#.#
    #####.#################.#.#######.#####.#.###.#.#.#.###.###.#.#.#.#.#####.#.###.#.###.#.###.#.#.#.###.#.###########.#.#.#.#.#####.###.#.#.#.#
    #...#...###...#.....#...#.......#.#...#.#.#...#.#.#.>.>.#...#.#.#.#.#.....#...#.#...#.#.#...#...#.#...#...#.....#...#.#.#.#.....#...#.#...#.#
    #.#.###v###.#.#.###.#.#########.#.#.#.#.#.#.###.#.###v###.###.#.#.#.#.#######.#.###.#.#.#.#######.#.#####.#.###.#.###.#.#.#####.###.#.#####.#
    #.#.###.>.#.#.#.###.#.#.........#.#.#.#.#.#...#.#.###...#.###.#.#.#.#.....#...#...#.#.#.#...#...#.#.#.....#...#.#...#.#.#...#...###...#.....#
    #.#.###v#.#.#.#.###.#.#.#########.#.#.#.#.###.#.#.#####.#.###.#.#.#.#####.#.#####.#.#.#.###.#.#.#.#.#.#######.#.###.#.#.###.#.#########.#####
    #.#.....#...#.#...#...#.......#...#.#.#.#.#...#...#.....#...#.#...#.#...#.#.#...#.#.#.#.#...#.#...#.#.#####...#...#.#...#...#.#...#...#.....#
    #.###########.###.###########.#.###.#.#.#.#.#######.#######.#.#####.#.#.#.#.#.#.#.#.#.#.#.###.#####.#.#####.#####.#.#####.###.#.#.#.#.#####.#
    #.....#...###.#...###.......#.#.....#...#...#.....#.....###...#.....#.#.#.#.#.#.#.#.#.#.#...#.#...#.#...>.>.#####...#...#.....#.#...#...#...#
    #####.#.#.###.#.#####.#####.#.###############.###.#####.#######.#####.#.#.#.#.#.#.#.#.#.###.#.#.#.#.#####v###########.#.#######.#######.#.###
    #.....#.#...#...#...#.....#.#...............#...#.#...#.#...###.....#.#.#.#...#...#...#.>.>.#.#.#...#.....#...#...###.#...#...#...#...#...###
    #.#####.###.#####.#.#####.#.###############.###.#.#.#.#.#.#.#######.#.#.#.###############v###.#.#####.#####.#.#.#.###.###.#.#.###.#.#.#######
    #.....#...#...#...#...#...#.#...............#...#...#...#.#.#.....#.#.#.#.###...#...#...#.#...#.....#.#.....#...#...#.#...#.#.....#.#.#...###
    #####.###.###.#.#####.#.###.#.###############.###########.#.#.###.#.#.#.#.###.#.#.#.#.#.#.#.#######.#.#.###########.#.#.###.#######.#.#.#.###
    ###...#...#...#.#.....#...#...###...#...#...#.....#...#...#...#...#.#.#.#.#...#.#.#.#.#.#.#...#...#.#.#...#.......#...#...#.........#...#...#
    ###.###.###.###.#.#######.#######.#.#.#.#.#.#####.#.#.#.#######.###.#.#.#.#.###.#.#.#.#.#.###.#.#.#.#.###.#.#####.#######.#################.#
    #...#...###...#.#.......#.#.......#.#.#.#.#.#...#.#.#.#.#.......###...#...#...#...#...#...###...#...#.#...#.....#.#...#...###...............#
    #.###.#######.#.#######.#.#.#######.#.#.#.#.#.#.#.#.#.#.#.###################.#######################.#.#######.#.#.#.#.#####.###############
    #...#.#...#...#.#...#...#...#...#...#.#.#.#...#.#...#...#.............#.....#...#...#####...#...#...#...#...#...#...#...###...#...#.......###
    ###.#.#.#.#.###.#.#.#.#######.#.#.###.#.#.#####.#####################.#.###.###.#.#.#####.#.#.#.#.#.#####.#.#.#############.###.#.#.#####.###
    ###...#.#.#.....#.#...###...#.#...###.#.#.#.....#...#...###.......#...#...#.#...#.#...#...#...#...#.#...#.#.#.............#.....#...#...#...#
    #######.#.#######.#######.#.#.#######.#.#.#.#####.#.#.#.###.#####.#.#####.#.#v###.###.#.###########.#.#.#.#.#############.###########.#.###.#
    #.......#.........###...#.#.#.......#.#.#.#.#...#.#.#.#.#...#...#.#.#...#.#.>.>.#.#...#.......#.....#.#.#.#.#.....#...#...#...###...#.#.....#
    #.###################.#.#.#.#######.#.#.#.#.#.#.#.#.#.#.#.###.#.#.#.#.#.#.###v#.#.#.#########.#.#####.#.#.#.#.###.#.#.#.###.#.###.#.#.#######
    #...#...............#.#.#.#.#.......#.#.#.#.#.#.#.#.#.#.#.....#.#...#.#.#.###.#.#.#...#...###.#.#...#.#.#.#.#.###...#...###.#.#...#.#.......#
    ###.#.#############.#.#.#.#.#v#######.#.#.#.#.#.#.#.#.#.#######.#####.#.#.###.#.#.###.#.#.###.#.#.#.#.#.#.#.#v#############.#.#.###.#######.#
    ###...#...#.........#.#.#.#.>.>.#...#.#...#.#.#...#.#.#.......#...#...#.#.#...#...###...#.#...#.#.#.#.#...#.>.>...#...#...#.#.#.#...#.......#
    #######.#.#.#########.#.#.###v#.#.#.#.#####.#.#####.#.#######.###.#.###.#.#.#############.#.###.#.#.#.#######v###.#.#.#.#.#.#.#.#.###.#######
    #.......#...#.....###.#.#.#...#...#...#.....#.....#.#...#.....#...#...#.#.#.....#.........#.#...#.#.#.#.......#...#.#...#.#.#.#.#.###.......#
    #.###########.###v###.#.#.#.###########.#########.#.###.#.#####v#####.#.#.#####.#.#########.#.###.#.#.#.#######.###.#####.#.#.#.#.#########.#
    #.....#.......###.>.#.#.#.#.#.........#...#...#...#.#...#...#.>.>...#.#...###...#.........#.#.....#...#.......#.###.....#.#.#.#.#.#...###...#
    #####.#.#########v#.#.#.#.#.#.#######.###.#.#.#.###.#.#####.#.#v###.#.#######.###########.#.#################.#.#######.#.#.#.#.#.#.#.###v###
    #...#...###...#...#...#.#.#.#.#.....#.#...#.#.#...#.#...###...#...#.#.#.......###.........#.......#...........#.#.....#.#.#.#...#...#.#.>.###
    #.#.#######.#.#.#######.#.#.#.#.###.#.#.###.#.###.#.###.#########.#.#.#.#########.###############.#.###########.#.###.#.#.#.#########.#.#v###
    #.#.........#.#.......#.#.#...#...#...#...#.#.#...#.....#.........#...#.....#...#.........#.....#.#...........#...###...#.#...#...###...#...#
    #.###########.#######.#.#.#######.#######.#.#.#.#########.#################.#.#.#########.#.###.#.###########.###########.###.#.#.#########.#
    #.#.....#...#.........#...###...#.....#...#.#.#.......#...#...#...#.......#.#.#...#...###...#...#...#...#...#...........#.#...#.#...........#
    #.#.###.#.#.#################.#.#####.#.###.#.#######.#.###.#.#.#.#.#####.#.#.###.#.#.#######.#####.#.#.#.#.###########.#.#.###.#############
    #...###...#...........###...#.#.......#.....#.#...#...#.....#...#...#.....#...###...#.#...###.......#.#...#.............#...###.....#.......#
    #####################.###.#.#.###############.#.#.#.#################.###############.#.#.###########.#############################.#.#####.#
    #.............###.....#...#.#.#...#.........#.#.#...#...#.......#.....###...#...#...#.#.#.#...#...###...........#.....#...#.........#.#.....#
    #.###########.###.#####.###.#.#.#.#.#######.#.#.#####.#.#.#####.#.#######.#.#.#.#.#.#.#.#.#.#.#.#.#############.#.###.#.#.#.#########.#.#####
    #...........#.....#...#...#...#.#...#.......#...#...#.#.#.....#...#...#...#.#.#.#.#...#.#...#.#.#...#...#.......#.#...#.#.#.........#.#.....#
    ###########.#######.#.###.#####.#####.###########.#.#.#.#####.#####.#.#.###.#.#.#.#####.#####.#.###.#.#.#.#######.#.###.#.#########.#.#####.#
    #.....#.....#.......#.#...#.....#...#.....#...###.#.#.#.#...#.......#.#...#.#.#.#.#...#...#...#...#.#.#.#.......#.#.###.#...###...#...#.....#
    #.###.#.#####.#######.#.###.#####.#.#####.#.#.###.#.#.#.#.#.#########.###.#.#.#.#v#.#.###.#.#####.#.#.#.#######v#.#.###.###.###.#.#####.#####
    #...#...#...#.#.......#.....#.....#.#.....#.#.....#.#.#.#.#.#...#.....#...#.#.#.>.>.#.#...#.#...#.#.#.#.#.....>.>.#...#...#...#.#.#...#.....#
    ###.#####.#.#.#.#############.#####.#.#####.#######.#.#.#.#.#.#.#.#####.###.#.###v###.#.###.#.#.#.#.#.#.#.#####v#####.###.###.#.#.#.#.#####.#
    ###.#.....#...#...###.......#.....#...#...#.....#...#.#.#.#.#.#.#.#...#...#.#.###...#...###.#.#.#.#.#.#.#.###...#.....###.#...#.#.#.#.###...#
    ###.#.###########v###.#####.#####.#####.#.#####.#.###.#.#.#.#.#.#v#.#.###.#.#.#####.#######.#.#.#.#.#.#.#.###.###.#######.#.###.#.#.#.###v###
    ###...#...#...###.>.#.#.....#...#...###.#.#.....#...#.#.#.#.#.#.>.>.#.....#.#...###.......#.#.#.#.#.#.#...#...#...#...#...#.#...#.#.#.#.>.###
    #######.#.#.#.###v#.#.#.#####.#.###.###.#.#.#######.#.#.#.#.#.###v#########.###.#########.#.#.#.#.#.#.#####.###.###.#.#.###.#.###.#.#.#.#v###
    #...#...#.#.#.....#...#.#...#.#.....#...#.#.#...#...#.#.#.#...###.........#.#...#.........#.#.#...#.#.#...#.###...#.#.#.#...#.###.#.#.#.#.###
    #.#.#.###.#.###########.#.#.#.#######.###.#.#.#.#.###.#.#.###############.#.#.###.#########.#.#####.#.#.#.#.#####.#.#.#.#.###.###.#.#.#.#.###
    #.#.#...#.#.......#.....#.#.#.....###...#.#...#.#...#.#.#.#...............#...###.........#...#...#...#.#.#.....#.#.#...#...#...#...#...#...#
    #.#.###.#.#######.#.#####.#.#####.#####.#.#####.###.#.#.#.#.#############################.#####.#.#####.#.#####.#.#.#######.###.###########.#
    #.#.....#.........#.#...#.#.#...#.#...#.#.#.....#...#.#.#.#.#...........#.....###.........#.....#.###...#.......#.#.......#.#...###...#...#.#
    #.#################.#.#.#.#.#.#.#v#.#.#.#.#.#####.###.#.#.#.#.#########.#.###.###.#########.#####.###.###########.#######.#.#.#####.#.#.#.#.#
    #...............#...#.#.#.#.#.#.>.>.#...#.#.....#...#.#...#...#.........#...#...#.....#.....#...#...#.......#####.#.....#.#...#.....#...#...#
    ###############.#.###.#.#.#.#.###v#######.#####.###.#.#########.###########.###.#####.#.#####.#.###.#######.#####.#.###.#.#####.#############
    #.......#...#...#...#.#...#.#...#.......#...#...#...#.......#...#.......###.#...#...#...#...#.#.#...###...#.....#.#...#.#.#...#.............#
    #.#####.#.#.#.#####.#.#####.###.#######.###.#.###.#########.#.###.#####.###.#.###.#.#####.#.#.#.#.#####.#.#####.#.###.#.#.#.#.#############.#
    #.....#...#...#####...#...#.....###.....###...###.....#.....#.....#...#.#...#.#...#.#.....#...#...###...#.......#.....#...#.#.###...#.......#
    #####.#################.#.#########.#################.#.###########.#.#.#.###.#.###.#.###############.#####################.#.###.#.#.#######
    #.....#...#.....#.....#.#.#...#.....#.....#...###...#...#...#...#...#...#...#.#...#.#...#...#...#...#.#.............#...#...#...#.#.#.......#
    #.#####.#.#.###.#.###.#.#.#.#.#.#####.###.#.#.###.#.#####.#.#.#.#.#########.#.###.#.###v#.#.#.#.#.#.#.#.###########.#.#.#.#####.#.#.#######.#
    #.......#...#...#...#.#.#.#.#.#.......#...#.#.#...#...#...#...#.#.....###...#.#...#...>.>.#.#.#...#.#...#...........#.#.#.....#.#.#.#...#...#
    #############.#####.#.#.#.#.#.#########v###.#.#.#####.#.#######.#####.###.###.#.#######v###.#.#####.#####.###########.#.#####.#.#.#.#.#.#.###
    ###...#...###.....#.#.#.#.#.#...#...#.>.>.#.#.#.#.....#.......#...#...#...#...#...#...#...#...#.....#...#.....#...#...#.###...#.#.#.#.#.#.###
    ###.#.#.#.#######.#.#.#.#.#.###.#.#.#.#v#.#.#.#.#.###########.###.#.###.###.#####.#.#.###.#####.#####.#.#####.#.#.#.###.###v###.#.#.#.#.#.###
    #...#...#...#.....#.#...#.#.###.#.#.#.#.#...#...#...###...###...#...###...#...#...#.#...#.....#...###.#.......#.#.#...#.#.>.###.#.#.#.#.#...#
    #.#########.#v#####.#####.#.###.#.#.#.#.###########.###.#.#####.#########.###.#.###.###.#####.###.###.#########.#.###.#.#.#v###.#.#.#.#.###.#
    #.......#...#.>...#...#...#...#.#.#.#.#...#####.....#...#.#.....#...#...#...#...###...#.#...#...#...#.......###.#...#.#.#.#...#.#.#.#.#...#.#
    #######.#.###v###.###.#.#####.#.#.#.#.###.#####.#####.###.#.#####.#.#.#.###.#########.#.#.#.###.###.#######v###.###.#.#.#.###.#.#.#.#.###.#.#
    #...###.#.....###...#.#.#...#.#...#...#...#.....#...#...#.#.......#.#.#.#...#.....#...#.#.#.#...#...#.....>.>.#...#...#...###.#.#.#.#...#...#
    #.#.###.###########.#.#.#.#.#.#########.###.#####.#.###.#.#########.#.#.#.###.###.#.###.#.#.#.###.###.#####v#.###.###########.#.#.#.###.#####
    #.#.#...#.......#...#.#...#.#.#.......#...#.#...#.#.###.#.###...###.#.#.#...#...#...###.#.#...###...#.#.....#.....#.....#.....#...#...#...###
    #.#.#.###.#####.#.###.#####.#.#.#####.###.#.#.#.#.#.###.#.###.#.###v#.#.###.###.#######.#.#########.#.#.###########.###.#.###########.###.###
    #.#.#.....#.....#...#.#...#...#.....#.#...#.#.#.#.#.#...#...#.#...>.>.#.#...###.......#.#.....#.....#.#...#...#.....#...#.....#.....#...#...#
    #.#.#######.#######.#.#.#.#########.#.#.###.#.#.#.#.#.#####.#.#####v###.#.###########.#.#####.#.#####.###.#.#.#.#####.#######.#.###.###.###.#
    #.#.........#######...#.#...###...#.#.#...#...#...#...#####...#...#...#...#.......#...#...#...#...#...###...#...#...#.#.......#.#...###...#.#
    #.#####################.###.###.#.#.#.###.#####################.#.###.#####.#####.#.#####.#.#####.#.#############.#.#.#.#######.#.#######.#.#
    #...#.............#...#...#.....#...#.....#.............#.......#.....###...#...#...#...#.#.....#...###...........#...#.........#.......#.#.#
    ###.#.###########.#.#.###.#################.###########.#.###############.###.#.#####.#.#.#####.#######.###############################.#.#.#
    ###...#.....#...#.#.#.###.................#.......#...#.#.#...#...#.....#.....#.......#.#.#.....#...#...#...#...#...#...#.......#.......#...#
    #######.###.#.#.#.#.#.###################.#######.#.#.#.#.#.#.#.#.#.###.###############.#.#.#####.#.#.###.#.#.#.#.#.#.#.#.#####.#.###########
    ###...#...#...#...#.#.#...............#...###...#...#.#.#...#...#...#...#...............#...#...#.#.#.....#...#...#...#.#.....#.#.........###
    ###.#.###.#########.#.#.#############.#.#####.#.#####.#.#############.###.###################.#.#.#.###################.#####.#.#########.###
    ###.#.#...#...#.....#.#.........#...#.#.#.....#.#.....#...#.....#...#...#.......#.....#...###.#...#.#...#.....#.......#.#.....#...#.....#...#
    ###.#.#.###.#.#.#####.#########.#.#.#.#.#.#####.#.#######.#.###.#.#.###.#######.#.###.#.#.###.#####.#.#.#.###.#.#####.#.#.#######.#.###.###.#
    #...#.#...#.#.#.....#...........#.#.#...#.....#.#.......#...#...#.#.#...#...#...#.#...#.#...#.....#.#.#.#...#.#.....#.#.#.......#...###.....#
    #.###.###.#.#.#####.#############.#.#########.#.#######.#####.###.#.#.###.#.#.###.#.###.###.#####.#.#.#.###.#.#####.#.#.#######.#############
    #...#.....#.#.#...#.............#.#...#...#...#.#.....#.....#.#...#...###.#.#.....#...#.#...#...#.#.#.#.....#.......#...#.......#...........#
    ###.#######.#.#.#.#############.#.###.#.#.#.###.#.###.#####.#.#.#########.#.#########.#.#.###.#.#.#.#.###################.#######.#########.#
    ###.....###.#.#.#.#...###...#...#.#...#.#.#...#.#...#.#.....#...#####.....#...........#.#.###.#.#.#.#.................###.........#.........#
    #######.###.#.#.#.#.#.###.#.#v###.#.###.#.###.#.###.#.#v#############.#################.#.###.#.#.#.#################.#############.#########
    #.....#...#.#...#.#.#.#...#.>.>...#.#...#.#...#...#.#.>.>.....#...#...#.............#...#...#.#.#.#...#...#...#.......#...#.........#...#...#
    #.###.###.#.#####.#.#.#.#####v#####.#.###.#.#####.#.###v#####.#.#.#.###.###########.#.#####.#.#.#.###.#.#.#.#.#.#######.#.#.#########.#.#.#.#
    #...#.....#.....#.#.#.#.....#.....#...#...#...#...#.#...#.....#.#.#.....###...#.....#...#...#.#.#.#...#.#.#.#.#.###...#.#.#...#.......#...#.#
    ###.###########.#.#.#.#####.#####.#####.#####.#.###.#.###.#####.#.#########.#.#.#######.#.###.#.#.#.###.#.#.#.#v###.#.#.#.###v#.###########.#
    ###.#...#.......#...#.......#...#...#...#...#.#.....#...#...###.#.#...#...#.#.#.#...#...#.#...#.#.#...#.#.#.#.>.>.#.#.#.#.#.>.#...#.........#
    ###.#.#.#.###################.#.###.#.###.#.#.#########.###.###.#.#.#.#.#.#.#.#v#.#.#.###.#.###.#.###.#.#.#.###v#.#.#.#.#.#.#v###.#.#########
    #...#.#.#.....#...###.....#...#.....#...#.#.#.#.........###...#.#...#.#.#...#.>.>.#...###.#.###.#...#.#.#...#...#...#...#.#.#...#.#.#...#...#
    #.###.#v#####.#.#.###.###.#.###########.#.#.#.#.#############.#.#####.#.#######v#########.#.###.###.#.#.#####.###########.#.###.#.#.#.#.#.#.#
    #.....#.>.....#.#...#...#.#...........#...#.#.#.............#.#.#.....#.#.......###.......#...#.#...#.#.#...#.........###.#...#...#...#.#.#.#
    #######v#######.###.###.#.###########.#####.#.#############.#.#.#.#####.#.#########.#########.#.#.###.#.#.#.#########.###.###.#########.#.#.#
    ###...#...#...#.#...#...#.#...#.......###...#.#.....#...#...#.#.#...#...#.........#...#.......#.#...#...#.#.#.........#...#...#.........#.#.#
    ###.#.###.#.#.#.#.###.###.#.#.#.#########.###.#.###.#.#.#.###.#.###.#.###########.###.#.#######.###.#####.#.#.#########.###.###.#########.#.#
    #...#.....#.#.#.#.#...#...#.#.#.........#.#...#...#...#...###...###.#.#...........###.#...#.....#...#.....#.#.......###...#.###...#...###.#.#
    #.#########.#.#.#.#.###.###.#.#########.#.#.#####.#################.#.#.#############.###.#.#####.###.#####.#######.#####.#.#####.#.#.###.#.#
    #.....#...#.#...#...#...#...#...........#...#####.................#.#.#.............#.#...#...#...#...#...#.........#...#...###...#.#.....#.#
    #####.#.#.#.#########.###.#######################################.#.#.#############.#.#.#####.#.###.###.#.###########.#.#######.###.#######.#
    #.....#.#.#.#.......#...#.............#.......#...................#.#...#...........#...#...#.#.#...#...#.....#...#...#.#...#...#...#.......#
    #.#####.#.#.#.#####.###.#############.#.#####.#.###################.###.#.###############.#.#.#.#.###.#######.#.#.#.###.#.#.#.###.###.#######
    #...#...#...#.....#.#...###...........#.....#.#...#...............#.....#...........#...#.#.#...#.....###.....#.#.#...#.#.#.#.....###.....###
    ###.#.###########.#.#.#####.###############.#.###.#.#############.#################.#.#.#.#.#############.#####.#.###.#.#.#.#############v###
    #...#.....#.......#...#...#.........###...#.#.###...#...#.......#.#...#.............#.#.#.#.###...###...#.....#.#.#...#.#.#.....#...#...>.###
    #.#######.#.###########.#.#########.###.#.#.#.#######.#.#.#####.#.#.#.#.#############.#.#.#.###.#.###.#.#####.#.#.#.###.#.#####.#.#.#.###v###
    #.....#...#.#.......#...#.###.......#...#...#.#...#...#.#.#...#...#.#.#.............#.#.#.#.#...#...#.#...#...#.#...###.#.###...#.#.#...#...#
    #####.#.###.#.#####.#.###.###.#######.#######.#.#.#.###.#.#.#.#####.#.#############.#.#.#.#.#.#####.#.###.#.###.#######.#.###.###.#.###.###.#
    #.....#...#.#.#.....#...#...#.......#.#.....#.#.#.#...#.#.#.#.....#.#.###...#.......#.#.#.#.#.....#.#.#...#...#.#.......#...#.#...#.#...#...#
    #.#######.#.#.#.#######.###.#######.#.#.###.#.#.#.###.#.#v#.#####.#.#.###.#.#.#######.#.#.#.#####.#.#.#.#####v#.#.#########.#.#.###.#.###.###
    #.#...#...#...#.#.....#.#...#.......#...#...#...#.#...#.>.>.#.....#.#.###.#.#.#.....#.#.#.#.#...#.#.#.#.#...>.>.#.#.....#...#.#.###...###...#
    #.#.#.#.#######.#.###.#.#.###.###########.#######.#.#########.#####.#.###.#.#v#.###.#.#.#.#.#.#.#.#.#.#.#.#######.#.###.#.###.#.###########.#
    #.#.#.#.#.......#...#...#.###...#...###...#####...#.........#...#...#.#...#.>.>.#...#.#.#.#.#.#.#.#.#.#.#.......#.#.###.#...#...#...#.......#
    #.#.#.#.#.#########.#####.#####v#.#.###.#######.###########.###.#.###.#.#########.###.#.#.#.#.#.#.#.#.#.#######.#.#.###.###.#####.#.#.#######
    #...#...#.....#...#.....#...#.>.>.#.#...#.......#...#...#...#...#.#...#.........#...#.#.#.#.#.#...#...#.#...#...#.#.###.#...#...#.#.#.......#
    #############.#.#.#####.###.#.#####.#.###.#######.#.#.#.#.###.###.#.###########.###.#.#.#.#.#.#########.#.#.#.###.#.###.#.###.#.#.#.#######.#
    #.............#.#.#...#...#.#.....#.#...#...#...#.#.#.#.#.###...#.#.#.....#...#.#...#.#.#.#.#.......#...#.#.#...#.#.#...#.#...#...#.........#
    #.#############.#.#.#.###.#.#####.#.###.###.#.#.#.#.#.#.#.#####.#.#.#.###.#.#.#.#.###.#.#.#.#######.#.###.#.###.#.#.#.###.#.#################
    #...............#...#.....#.......#.....###...#...#...#...#####...#...###...#...#.....#...#.........#.....#.....#...#.....#.................#
    ###########################################################################################################################################.#
    """
}

//
//  Input.swift
//  Day20
//
//  Created by Will McGinty on 12/24/22.
//

import Foundation

extension String {

    static let testInput = """
    broadcaster -> a, b, c
    %a -> b
    %b -> c
    %c -> inv
    &inv -> a
    """
    
    static let testInput2 = """
    broadcaster -> a
    %a -> inv, con
    &inv -> b
    %b -> con
    &con -> output
    """

    static let input = """
    %jx -> rt, rs
    &cc -> cd, fc, qr, nl, gk, zr
    %qs -> cl, rs
    %zr -> cq
    %mx -> nr, pm
    %mj -> qr, cc
    %cj -> cc, nt
    %jv -> sp
    %dj -> bd, zc
    %kt -> lt
    broadcaster -> gz, xg, cd, sg
    &dn -> rx
    %br -> nf, bd
    %cd -> cc, nl
    %zc -> jq, bd
    %xg -> cf, pm
    %nz -> gm, bd
    &dd -> dn
    %nb -> sl
    &pm -> kt, xg, xp, jv, sp
    &fh -> dn
    %rt -> qq
    %qq -> rs, hd
    %hd -> qs, rs
    &xp -> dn
    %pj -> cc, mj
    %gz -> bd, kb
    %zd -> jv, pm
    %cq -> cj, cc
    %qr -> gk
    %ng -> jk, bd
    %kb -> bd, sv
    %cl -> zx, rs
    %gj -> zd, pm
    %sl -> kx
    %sv -> br
    %nf -> bd, nz
    %zx -> rs
    %nt -> mn, cc
    %rh -> nb, rs
    %gk -> ln
    &bd -> gm, gz, fh, sv
    %jq -> ng, bd
    %sp -> pc
    %sg -> rs, rh
    %kx -> jx
    &fc -> dn
    %cf -> gj, pm
    %pc -> kt, pm
    %jk -> bd
    %vf -> pm
    &rs -> sg, dd, sl, kx, nb, rt
    %nr -> vf, pm
    %ln -> zr, cc
    %lt -> pm, mx
    %gm -> dj
    %nl -> pj
    %mn -> cc
    """
}

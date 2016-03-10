Privacy-Preserving Access Control in Decentralized Storage for OSNs
===============================================================================

This is the source code of the paper and slides for the paper:
```bibtex
@inproceedings{PPACinDecentralizedSys,
    title={Privacy-Preserving Access Control in Publicly Readable Storage
        Systems},
    author={Daniel Bosk and Sonja Buchegger},
    booktitle={Privacy and Identity Management --- Time for a revolution?},
    editor={Jan Camenisch and David Aspinall and Simone Fischer-Hübner and
        Marit Hansen and Charles Raab},
    series={Lecture Notes in Computer Science},
    volume={X},
    pages={Y},
    year={2016},
    publisher={Springer International Publishing},
    note={Under review},
    URL={https://github.com/dbosk/anobe},
    keywords={Decentralized Online Social Networks,
        Access Control,
        Decentralized Storage,
        Anonymous Broadcast Encryption,
        Hidden Policies,
        Hidden Credentials,
        Hidden Decisions},
}
```

You can find the [paper][1] (as submitted for post-proceedings) and the 
[slides][2] under releases.

[1]: https://github.com/dbosk/anobe/releases/download/v0.1/anobe-paper.pdf
[2]: https://github.com/dbosk/anobe/releases/download/v0.1/anobe-slides.pdf


Compilation
===============================================================================

To compile the paper or slides, first clone the submodules:
```
git submodule update --init
```
Then, to compile the paper, run `make DecentAC-paper.pdf`.

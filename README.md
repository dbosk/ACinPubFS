Privacy-Preserving Access Control in Publicly Readable Storage
===============================================================================

This is the source code of the paper and slides for the paper:
```bibtex
@inproceedings{PPACinPubFS,
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
}
```

You can find the [paper][1] (as accepted for post-proceedings) and the (old) 
[slides][2] under releases.

[1]: https://github.com/dbosk/DecentAC/releases/download/v2.1/DecentAC-paper.pdf
[2]: https://github.com/dbosk/DecentAC/releases/download/v0.1/anobe-slides.pdf


Compilation
===============================================================================

To compile the paper or slides, first clone the submodules:
```
git submodule update --init
```
Then, to compile the paper, run `make DecentAC-paper.pdf`.

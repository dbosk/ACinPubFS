Privacy-Preserving Access Control in Publicly Readable Storage
===============================================================================

This is the source code of the paper and slides for the paper:
```bibtex
@inproceedings{PPACinPubFS,
  title={Privacy-Preserving Access Control in Publicly Readable Storage 
  Systems},
  author={Bosk, Daniel
      and Buchegger, Sonja},
  editor={Aspinall, David
      and Camenisch, Jan
      and Hansen, Marit
      and Fischer-H{\"u}bner, Simone
      and Raab, Charles},
  booktitle={Privacy and Identity Management. Time for a Revolution? 10th IFIP 
  WG 9.2, 9.5, 9.6/11.7, 11.4, 11.6/SIG 9.2.2 International Summer School, 
  Edinburgh, UK, August 16-21, 2015, Revised Selected Papers},
  year={2016},
  publisher={Springer International Publishing},
  address={Cham},
  pages={327--342},
  isbn={978-3-319-41763-9},
  doi={10.1007/978-3-319-41763-9_22},
  url={http://github.com/dbosk/access-control-in-public-file-systems/},
}
```

You can find the [paper][1] (as accepted for the post-proceedings).

[1]: https://github.com/dbosk/DecentAC/releases/download/v2.2/DecentAC-paper.pdf


Compilation
===============================================================================

To compile the paper or slides, first clone the submodules:
```
git submodule update --init
```
Then, to compile the paper, run `make DecentAC-paper.pdf`.

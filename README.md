# VMD scripts
various scripts for VMD

VMD で使う色々なスクリプトを適当においておくリポジトリ。の予定だが今はとりあえず simple_movie.tcl のみ。

# To use tcl script in VMD

```
$ vmd -dcd sample.dcd -psf sample.psf
vmd> source script.tcl
```

# simple_movie.tcl

動画を作る。VMD 付属の MOVIE_MAKER と大して違わないが、色々カスタマイズするときのひな形にはなると思う。

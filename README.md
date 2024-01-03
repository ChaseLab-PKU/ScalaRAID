# ScalaRAID

ScalaRAID is an optimization for Linux software RAID engine (i.e., mdraid), which refines the role domain of locks and designs a new data structure to prevent different threads from preempting the RAID resources. By doing so, ScalaRAID can maximize the thread-level parallelism and reduce the time consumption of I/O request handling.

## Build
1. Just use these files to replace the corresponding files in the kernel (`pathtokernel/drivers/md`).
2. `cd pathtokernel/drivers/md` and `make`.
3. Install the output modules `md-mod.ko` and `raid456.ko`.

## Publication
The BibTex is shown below:
```
@inproceedings{yi2022scalaraid,
  title={Scalaraid: Optimizing linux software raid system for next-generation storage},
  author={Yi, Shushu and Yang, Yanning and Tang, Yunxiao and Zhou, Zixuan and Li, Junzhe and Yue, Chen and Jung, Myoungsoo and Zhang, Jie},
  booktitle={Proceedings of the 14th ACM Workshop on Hot Topics in Storage and File Systems},
  pages={119--125},
  year={2022}
}
```

## Contact
Feel free to contact Shushu Yi (firnyee@gmail.com) if you have any questions.

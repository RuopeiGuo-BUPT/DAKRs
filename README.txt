INFO:
This is the matlab code of the paper
Ruo-Pei Guo,~Chun-Guang Li,~Yonghua Li,~and~Jiaru Lin, 
"Density-Adaptive Kernel based Re-Ranking for Person Re-Identification", 
International Conference on Pattern Recognition (ICPR), 2018.
 

Demo
=====
Run 'run.m','run_Market_1501.m' and 'run_Mars.m' to reproduce the results of the paper. 
You can change dataset by varying sys.database, change features by varying feature_name and change metric by varying metric in 'run.m'
Also, You can change features by varying netname in 'run_Market_1501.m'

All the features we have prepared to you yet. You could find more detials in the relevant references.

All the experiments of Table.II and Table.III in [1] can be precisely reproduced
by run.m because training/testing groups are fixed in these data sets. While,
for data set Market-1501 and Mars, the results are slightly different from [1].
The reasons are: a) In both data sets, training/testing groups are randomly
produced at each running. b) For simplicity, we don＊t search and return the
optima value of each rank accuracy in a large range (e.g. k = 1 : 1 : 100). But
this difference doesn＊t influence the effectiveness and efficiency of our methods. In
addition, we also provide function find optima of two DAKR methods.m
and find opima CMC.m of these two data sets and you could use them to get
optima rank accuracy if you want. Finally, although time cost may vary from
different device, the trend that the time cost of inv-DAKR and bi-DAKR are
nearly close and fairly faster than that of re-ranking [2], would never change.

 
The datasets can be downloaded below. 
    - VIPeR: https://vision.soe.ucsc.edu/node/178
    - CUHK01: http://www.ee.cuhk.edu.hk/~rzhao/
    - PRID450_S: http://lrs.icg.tugraz.at/download.php
    - GRID: http://www.eecs.qmul.ac.uk/~ccloy/downloads_qmul_underground_reid.html
    - CUHK03: http://www.ee.cuhk.edu.hk/~rzhao/
 

 
Reference
=========
If you use this code, please cite it as
 
[1].Ruo-Pei Guo, Chun-Guang Li, Yonghua Li and Jiaru Lin.: Density-Adaptive Kernel
based Re-Ranking for Person Re-Identification. In: 2018 International Conference
on Pattern Recognition. Beijing, China (2018)

relevant Reference
=========
[2]. Zhong, Zhun and Zheng, Liang and Cao, Donglin and Li, Shaozi.: Re-ranking Person
Re-identification with k-Reciprocal Encoding. In: IEEE Conference on Computer
Vision and Pattern Recognition, pp. 3652每3661. Honolulu, Hawai(2017)
[3]. Liao, Shengcai and Hu, Yang and Zhu, Xiangyu and Li, Stan Z.: Person re-
identification by Local Maximal Occurrence representation and metric learning.
In: IEEE Conference on Computer Vision and Pattern Recognition, pp. 2197每2206.
Boston, Massachusetts(2015)
[4]. Zheng, Liang and Shen, Liyue and Tian, Lu and Wang, Shengjin and Wang, Jing-
dong and Tian, Qi.: Scalable Person Re-identification: A Benchmark. In: IEEE In-
ternational Conference on Computer Vision, pp. 1116每1124. Santiago, Chile(2015)
[5]. Zheng, Liang and Bie, Zhi and Sun, Yifan and Wang, Jingdong and Su, Chi and
Wang, Shengjin and Tian, Qi.: MARS: A Video Benchmark for Large-Scale Per-
son Re-Identification. In: European Conference on Computer Vision, pp. 868每884.
Amsterdam, The Netherlands(2016)
[6]. Matsukawa, Tetsu and Okabe, Takahiro and Suzuki, Einoshin and Sato, Yoichi.: Hi-
erarchical Gaussian Descriptor for Person Re-identification. In: IEEE Conference on
Computer Vision and Pattern Recognition, pp. 1363每1372. Las Vegas, Nevada(2016)


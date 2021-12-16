# ImageNet2012 Download and Arrangement

The official download link is expired now :cry:.  However, we can download the dataset through Torrent. </br> 

:exclamation: check more information from https://image-net.org/ , if you need

## Download data 

* Go to [this link](https://academictorrents.com/collection/imagenet-2012) to download torrent files (for training and validation) 
* Make them located in this repository 

```bash
.
├── ILSVRC2012_img_train.tar
└── ILSVRC2012_img_val.tar

```



## Make them arranged 

Run the ```DB_arrangement.bash``` for handling the above compressed files.

```bash
bash DB_arrangement.bash
```



Be sure if they are arranged like below: 

```bash
train
├── n07693725
├── ... 
└── n07614500
```

```bash
val
├── n01440764 
├── ...
└── n04458633
```



## Dataloader example (PyTorch)

Check the ```dataloader_example.ipynb``` 




***

### Reference 

* [ImageNet LSVRC 2012 데이터셋 다운로드 받기](https://seongkyun.github.io/others/2019/03/06/imagenet_dn/)
* [DataLoader parameter별 용도](https://subinium.github.io/pytorch-dataloader/)
* [ILSVRC(Imagenet classification)validation set torchvision 으로 성능평가하기](https://csm-kr.tistory.com/6)
* [tensorflow/datasets, imagenet2012](https://github.com/tensorflow/datasets/blob/master/docs/catalog/imagenet2012.md)



- [x] prepare training data (generating)
- [x] modify code of this repo for training
- [x] train denoiser
- [x] modify code for denoise
- [ ] evaluate denoiser
    - [x] train& test loss problem: 训练/测试时没问题，但用生成的图片再算loss就很大
        ~~图片tensor size问题？~~
        数据范围超了？True



用VAE获得噪声的distribution，再sample来快速获取训练用的噪声
或者把网络结构缩小一点再试试DnCNN
或者数据增强

- [ ] 多造数据
    - [x] 改代码
- [ ] 数据增强
- [x] 改文章intuition的图
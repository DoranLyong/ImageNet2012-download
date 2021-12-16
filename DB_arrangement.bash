# ****************** # 
#        Train       # 
# ****************** # 

# === make a directory for train === # 
mkdir train && mv ILSVRC2012_img_train.tar train/ && cd train

# === extract the compressed file === # 
tar -xvf ILSVRC2012_img_train.tar 
rm -f ILSVRC2012_img_train.tar  


# === make directories for each class (labeling like) === #
find . -name "*.tar" | while read NAME ; do mkdir -p "${NAME%.tar}"; tar -xvf "${NAME}" -C "${NAME%.tar}"; rm -f "${NAME}"; done

cd .. 


# ******************* # 
#      Validation     # 
# ******************* # 

# === make a directory for val === # 
mkdir val && mv ILSVRC2012_img_val.tar val
cp valprep.sh val
cd val 

# === extract the compressed file === # 
tar -xvf ILSVRC2012_img_val.tar
rm -rf ILSVRC2012_img_val.tar


# === make directories for each class === # 
bash valprep.sh
rm -f valprep.sh


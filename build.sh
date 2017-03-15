#!/bin/sh

#yum install mysql-devel -y

unzip chardet.zip 
cd chardet-master/
python setup.py install
cd ..

tar -zxvf setuptools-2.2.tar.gz
cd setuptools-2.2
python setup.py install
cd ..

tar -zxvf Cython-0.20.1.tar.gz
cd Cython-0.20.1
python setup.py install
cd ..

unzip gevent.zip
cd gevent-master/
python setup.py install
cd ..

unzip mysqldb.zip
cd MySQLdb1-master/
python setup.py install
cd ..

#unzip pip-develop.zip
#cd pip-develop
#python setup.py install
#cd ..

tar -zxvf protobuf-2.5.0.tar.gz 
cd protobuf-2.5.0
./configure
make -j8
make install
cd python
python setup.py build
python setup.py install
cd ../..

unzip pysigset.zip 
cd pysigset-master/
python setup.py install
cd ..

unzip redis-py-master.zip 
cd redis-py-master
python setup.py install
cd ..

tar -zxvf simplejson-3.4.0.tar.gz
cd simplejson-3.4.0
python setup.py install
cd ..

unzip twisted.zip 
cd twisted-trunk
python setup.py install
cd ..

unzip urllib3.zip
cd urllib3-master
python setup.py install
cd ..

pip install tornado

tar -zxvf python_module.tar.gz
cd python_module
python setup.py install
cd ..

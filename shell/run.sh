#!/bin/sh
ROOT_DIR=$(pwd)
JAVA_SRC=$(pwd)/java_src
CLASS_SRC=$(pwd)/class_src
decompile_jar(){
	rm -rf $CLASS_SRC
	echo "start extract classes..."
	if [ ! -z $1 ];then
	echo $1	
	apktool d $1 -o $CLASS_SRC
	else
	echo classes.jar
	apktool d ./jar_src/classes.jar -o $CLASS_SRC
	fi
	
	echo "end"
}
extract_class_file(){
	if [ -d $1 ];then
	return;
	fi
	file_suffix=${1##*.}
	if [ $file_suffix="class" ];then
	./jad/jad  -r -s java -d $JAVA_SRC $1
	fi
	
}
decompile_java(){
	echo "start decompile java.."
	
	if [ ! -d $CLASS_SRC ];then
	echo "!!!! class source is empty"
	return
	fi

   	for arg in `find $CLASS_SRC`
	do
	extract_class_file $arg	
	done
	tree $JAVA_SRC	
	echo "end"
}
help(){ 
	echo ----------------------------------------------------------------------------------------------------------------
	echo -
	echo -	"./shell/run.sh d [xxx.jar]		-------   if no xxx.jar will decode jar_src/classes.jar"
	echo -	"./shell/run.sh j 	     		-------   will decompile classes files under [class_src] " 
	echo -	"./shell/run.sh jc 	     		-------   rm dir [class_src] before decompile classes files under [class_src] "
	echo -
	echo ----------------------------------------------------------------------------------------------------------------
}	

case $1 in  
  "d"   ) echo "decompile jar ....."
	  decompile_jar $2
	  ;;  
  "j"   ) echo "decompile java src ....."
	  decompile_java
	  ;;
  "jc"   ) echo "decompile java src with clean....."
	   rm -rf $JAVA_SRC
	  decompile_java
	  ;;
  *     ) help;;  
esac     




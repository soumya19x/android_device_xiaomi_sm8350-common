CLANGDIR=$PWD/prebuilts/clang/host/linux-x86
 if [ ! -d "${CLANGDIR}/clang-r450784d" ]
 then
     GREEN='\033[0;32m'
     NC='\033[0m'
     echo -e "${GREEN}Downloading clang 14.0.6${NC}"
     mkdir ${CLANGDIR}/clang-r450784d
     wget https://android.googlesource.com/platform/prebuilts/clang/host/linux-x86/+archive/refs/tags/android-13.0.0_r3/clang-r450784d.tar.gz -P ${CLANGDIR}
     tar -C "${CLANGDIR}"/clang-r450784d/ -zxf "${CLANGDIR}"/clang-r450784d.tar.gz
     rm ${CLANGDIR}/clang-r450784d.tar.gz
 fi

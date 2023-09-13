echo "================================="
echo ""
echo "     W e l c o m e    T o"
echo "             T h e           "
echo " J u d g e    E n v i r o m e n t"
echo "      I n i t    S c r i p t"
echo ""
echo "================================="
echo CC-BY-SA wamu_M 2023
# Create PN folders
echo "Number of parts i.e P1,P2,P3,P4 (starts at 0)"
read parts 
i = 0
while [$i -le $parts]
do 
   mkdir "P$i"
   cp "./scripts/new.sh" "./P$i/new.sh"
   let "i++"
done
# Creating directory 
mkdir .judge
cp "./scripts/check-samples.sh" "./.judge/check-samples.sh"
cp "./scripts/template-main.cpp" "./.judge/template-main.cpp"
# Settings 
read -p "Do you want to automatically init git in every problem (recommended)?[Y/n]" shouldGit
case $shouldGit in 
  [Nn]* ) rem; break;;
  * ) touch "./.judge/use-git";;
esac 
# Clear afterwards
read -p "Do you want to clear the instalation files (recomended)[Y/n]?" shouldClear
case $shouldClear in 
  [Nn]* ) exit; break;;
  * ) echo "Deleting instalation files...";;
esac 
rm -r ./scripts/ 
rm init.sh 
rm -r "./.git" 
rm README.md 
rm LICENSE.md
echo Instalation Completed!
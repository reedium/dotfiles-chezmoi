function fix(){
  # Reset terminal after cating binary file
  reset;
  stty sane;
  tput rs1;
  clear;
  echo -e "\e[0m";
}

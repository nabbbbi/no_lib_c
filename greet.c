int sys_call(int sys, int fd, const void *buf, int size);

static const int string_length(const char *str)
{
  int i = 0;
  while(str[i]){
    i++;
  }
  return i;
}

int main(int argc, char **argv)
{
  if (argc == 2){
    sys_call(64, 1, "no input\n",9 );
    return 1;
  }
  for(int i = 0; i < argc - 1; i++){
    sys_call(64, 1, argv[i], string_length(argv[i]));
    sys_call(64, 1, "\n", 1);
  }
  return 0;
}

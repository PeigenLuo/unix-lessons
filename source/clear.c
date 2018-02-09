#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

int main() {
    char *home = getenv("HOME");
    char home_env[6 + strlen(home)];
    sprintf(home_env, "HOME=%s", home);
    char *path_env = "PATH=";
    char *ps1_env = "PS1=$ ";
    char *envp[4] = {home_env, path_env, ps1_env, NULL};
    char *argv[4] = {"/bin/bash", "--norc", "--noprofile", NULL};
    printf("I've removed everything from your PATH. Good luck!\n");
    execve("/bin/bash", argv, envp);
}
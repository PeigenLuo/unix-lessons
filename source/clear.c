#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

int main() {
    char *home = getenv("HOME");
    char home_env[6 + strlen(home)];
    sprintf(home_env, "HOME=%s", home);
    char *envp[2] = {home_env, NULL};
    execve("/bin/sh", NULL, envp);
}
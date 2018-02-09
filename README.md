UNIX Lesson 1 Challenges
=============

## Navigation

- Use `cd` and `ls` to navigate around the repository. List all of the files inside the `fruity` directory.
  - Now use `cat` to read each of those files. What's inside each of them?
- Create a directory called `foo`.
  - Now create a directory called `bar` inside of the `foo` directory, and another one outside of the `foo` directory.
  - Use `touch` to create a new file. Create a file called `elephant` in the `bar` directory that's inside the `foo` directory, and then another file called `poodle` in the other `bar` directory you made.
  - Use `cd` to go back to the root of the repository.

## Executing files

- `cd` to the directory called `executables`.
- Run the file `exec1`. What is its output?
- Why can't you run the file `exec2`? How can you change that?
- Try to run the file `exec3`, but do it the same way you ran the previous executables. Don't use `python` or `python3` to run it.

Now go back to the root of the repository.
- Try running each of the three executables again, but this time from the root directory, rather than from within the `executables` directory.

## Filesystem Hierarchy

- Open a new terminal, but keep your current one open. You should have two terminals now. In the second one, type `./magic`. This should drop you into another shell. You should see a prompt starting with `$`.
- Try to do the first `cat` exercise again. Does this still work?
- Try to execute the executable files. Does this still work?
- Why do you think `cd` still works, but `cat` doesn't? (Hint: type `help`)

Type `exit` at any time to leave this shell.

## SSH Keys

- **IMPORTANT** Check if you have an SSH key already. If you already have one, do **not** make another one. Skip the step about making a new one and go on to cloning.
- Create a new SSH key pair by using the command `ssh-keygen -t rsa -b 4096 -c 'CSELabs'`. The `-t` option tells SSH we're using the RSA algorithm, the `-b` option lets us choose the number of bits in our key (4096 in this case), and the `-c` option is just a comment (you can replace `'CSELabs'` with whatever you want.)
- Your SSH public key is located at `~/.ssh/id_rsa.pub`. Open this file and `cat` the contents. (Your private key is located at `~/.ssh/id_rsa`. Just leave that there and don't touch it)
- Go to https://github.umn.edu/settings/keys. Click "New SSH key" and paste the contents of the public key file.

**NEVER** share the private key. Don't transfer it to another computer. If you want to set up SSH login from another computer, generate a new key and add that to GitHub. Transferring the private key through any means opens the avenue for compromise.

## CLI Tools

### Java

The command to compile Java programs is `javac`.

- `cd` to the `java` folder.
- Compile `Hello.java` into `Hello.class`. You'll want to use `javac`.
- Run `Hello.class`, and make sure you get the desired output.
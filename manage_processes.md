# How to Manage Processes on Linux with nohup, nice, bg, fg, jobs Commands

### Linux Process Management Commands | Linux nohup, nice, bg, fg, jobs Commands.

#### Process Management using Linux Commands,

* jobs - Will show active jobs.
* bg - Resume jobs to the background.
* fg - Resume job to the foreground.

#### example: Resume a specific job
* bg %<job_id>
* fg %<job_id>

### nice value
* Niceness scale goes from -20 to 19. The lower the no. more priority that task gets.
#### Process priority = nice 
```bash
nice -n 5 process
```
### nohup
* If we want our process keep running even after closing our terminal, we can use nohup
```
nohup process &
nohp process > /dev/null 2>&1&
```

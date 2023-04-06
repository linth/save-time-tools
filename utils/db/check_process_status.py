'''
check the process is running or not.
'''
import psutil


def is_running_for_process(*args, **kwargs):
    # print(args)
    # print(type(args[0]))

    if (type(args[0]) != str):
        return False    

    for proc in psutil.process_iter():
        try:
            if proc.name() == args[0]:
                return True
        except (psutil.NoSuchProcess, psutil.AccessDenied, psutil.ZombieProcess):
            pass
    return False


if __name__ == '__main__':
    # if check_forticlient_running():
    #     print("FortiClient is running.")
    # else:
    #     print("FortiClient is not running.")

    if is_running_for_process('FortiClient.exe'):
        print("FortiClient is running.")
    else:
        print("FortiClient is not running.")

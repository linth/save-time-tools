import psutil

def check_forticlient_running():
    for proc in psutil.process_iter():
        try:
            if proc.name() == "FortiClient.exe":
                return True
        except (psutil.NoSuchProcess, psutil.AccessDenied, psutil.ZombieProcess):
            pass
    return False


if __name__ == '__main__':
    if check_forticlient_running():
        print("FortiClient is running.")
    else:
        print("FortiClient is not running.")


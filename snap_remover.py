import subprocess


def main():
    result = subprocess.run(["snap",  "list"], capture_output = True, text=True).stdout
    result = result.split("\n")

    for i in range(1, len(result) - 1):
        line = result[i].split(" ")
        snap_name = line[0]
        subprocess.run(["sudo", "snap", "remove", f"{snap_name}"])

    subprocess.run(["systemctl", "stop", "snapd"])
    subprocess.run(["sudo", "apt", "purge", "snapd"])
    subprocess.run(["sudo", "rm", "-rf", "~/snap"])
    subprocess.run(["sudo", "rm", "-rf", "~/var/snap"])
    subprocess.run(["sudo", "rm", "-rf", "~/var/lib/snapd"])
    subprocess.run(["sudo", "rm", "-rf", "~/var/cache/snapd"])
    subprocess.run(["sudo", "apt-mark", "hold", "snapd"])


if __name__ == '__main__':
    main()

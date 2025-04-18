torf = False
from colorama import Fore, Back, Style
import os 
import random
import string 
import pyfiglet
import colorama
from random_word import RandomWords
import keyboard
import sys
pro = torf
DevMode = torf
credits = '0'
Wifi_mode = torf
ai_active = torf
Security = 'MED'



def color_gradient_green_pink_purple(text):
    # Define the color codes
    colors = {
        'green': '\033[38;2;0;128;0m',
        'pink': '\033[38;2;255;105;180m',
        'purple': '\033[38;2;75;0;130m'
    }

    # Calculate the gradient steps
    steps = len(text.split('\n'))

    # Generate the color gradient
    gradient = []
    for i in range(steps):
        if i < steps // 3:
            # Green to pink
            r = int(0 + (255 - 0) * (i / (steps // 3)))
            g = int(128 + (105 - 128) * (i / (steps // 3)))
            b = int(0 + (180 - 0) * (i / (steps // 3)))
            color_code = f'\033[38;2;{r};{g};{b}m'
        elif i < 2 * steps // 3:
            # Pink to purple
            r = int(255 + (75 - 255) * ((i - steps // 3) / (steps // 3)))
            g = int(105 + (0 - 105) * ((i - steps // 3) / (steps // 3)))
            b = int(180 + (130 - 180) * ((i - steps // 3) / (steps // 3)))
            color_code = f'\033[38;2;{r};{g};{b}m'
        else:
            # Purple
            color_code = colors['purple']

        gradient.append(color_code)

    # Apply the color gradient to the text
    colored_text = ''
    for i, line in enumerate(text.split('\n')):
        colored_text += gradient[i] + line + '\033[0m' + '\n'

    return colored_text




# Initialize Colorama
colorama.init()

def color_gradient(text):
    # Define the color codes
    colors = {
        'red': Fore.RED,
        'orange': Fore.YELLOW,
        'yellow': Fore.YELLOW
    }

    # Calculate the gradient steps
    steps = len(text.split('\n'))

    # Generate the color gradient
    gradient = []
    for i in range(steps):
        if i < steps // 3:
            # Red to orange
            r = int(255 * (1 - i / (steps // 3)))
            g = int(160 * (i / (steps // 3)))
            b = 0
            color_code = f'\033[38;2;{r};{g};{b}m'
        elif i < 2 * steps // 3:
            # Orange to yellow
            r = 255
            g = int(165 + (255 - 165) * ((i - steps // 3) / (steps // 3)))
            b = 0
            color_code = f'\033[38;2;{r};{g};{b}m'
        else:
            # Yellow
            color_code = colors['yellow']

        gradient.append(color_code)

    # Apply the color gradient to the text
    colored_text = ''
    for i, line in enumerate(text.split('\n')):
        colored_text += gradient[i] + line + '\033[0m' + '\n'

    return colored_text

def weak_password():
    print("***************\n* Weak Password *\n***************")
    w_intr = random.randint(1,10)
    w_int1 = random.randint(1,100)
    w_int2 = random.randint(1,10)
    w_str = RandomWords()
    w_strf = w_str.get_random_word()
    weak_pass = w_strf + str(w_intr) + str(w_int1) + str(w_int2)
    print(Back.LIGHTYELLOW_EX + Fore.RED + weak_pass + Style.RESET_ALL)

def pass_gen():
    print(
        """        **********************
        * Password Generator *
        **********************\n"""
        "1) Weak\n"
        "2) Medium\n"
        "3) Strong\n"
        "4) Uncrackable\n"
    )
    x = input(">>> ")

    if x == '1':
        weak_password()
    else:
        print("Password generation not implemented yet.")

def banner_gen():
    print(
        "****************\n* Banner Maker *\n****************"
    )
    text = input("Enter the text to generate a banner: ")
    print(pyfiglet.figlet_format(text))

def cal():
    print("1) Addition\n2) Subtraction\n3) Multiplication\n4) Division")
    x = input(">>> ")

    if x == '1':
        num1 = float(input("Enter the first number: "))
        num2 = float(input("Enter the second number: "))
        print(f"{num1} + {num2} = {num1 + num2}")
    elif x == '2':
        num1 = float(input("Enter the first number: "))
        num2 = float(input("Enter the second number: "))
        print(f"{num1} - {num2} = {num1 - num2}")
    elif x == '3':
        num1 = float(input("Enter the first number: "))
        num2 = float(input("Enter the second number: "))
        print(f"{num1} * {num2} = {num1 * num2}")
    elif x == '4':
        num1 = float(input("Enter the first number: "))
        num2 = float(input("Enter the second number: "))
        if num2 != 0:
            print(f"{num1} / {num2} = {num1 / num2}")
        else:
            print("Error: Division by zero is not allowed.")
    else:
        print("Invalid choice.")

def win_tools():
    print("1) Open File Explorer\n2) Open Command Prompt")
    x = input(">>> ")

    if x == '1':
        os.system("explorer")
    elif x == '2':
        os.system("cmd")
    else:
        print("Invalid choice.")

def yt_downloader():
    print("YouTube Downloader not implemented yet.")

def tt_downloader():
    print("TikTok Downloader not implemented yet.")

def cus_terminal():
    text = """
 /$$$$$$$$ /$$$$$$       /$$$$$$$$                                /$$                     /$$
|__  $$__//$$__  $$     |__  $$__/                               |__/                    | $$
   | $$  | $$  \__/        | $$  /$$$$$$   /$$$$$$  /$$$$$$/$$$$  /$$ /$$$$$$$   /$$$$$$ | $$
   | $$  |  $$$$$$  /$$$$$$| $$ /$$__  $$ /$$__  $$| $$_  $$_  $$| $$| $$__  $$ |____  $$| $$
   | $$   \____  $$|______/| $$| $$$$$$$$| $$  \__/| $$ \ $$ \ $$| $$| $$  \ $$  /$$$$$$$| $$
   | $$   /$$  \ $$        | $$| $$_____/| $$      | $$ | $$ | $$| $$| $$  | $$ /$$__  $$| $$
   | $$  |  $$$$$$/        | $$|  $$$$$$$| $$      | $$ | $$ | $$| $$| $$  | $$|  $$$$$$$| $$
   |__/   \______/         |__/ \_______/|__/      |__/ |__/ |__/|__/|__/  |__/ \_______/|__/
                                                                                             
                                                                                             
                                                                                             
"""
    print(color_gradient_green_pink_purple(text))
    print("\n")
    inputxt = ">>> "
    print(Back.BLACK + Fore.WHITE + "Welcome to TS-Terminal! \n a branch of Tool from T-Security, this terminal is meant to be better then other terminals and easier to learn\n Type: 'Help' list of commands\n" + Style.RESET_ALL)
    import os

    inputxt = '>>> '
    while True:
        x = input(inputxt)
    
        if x.lower() in ['help', '-h', '--h', '-help', '--help', '--Help']:
            print(
                " 'Help' - Shows this message\n"
                " 'cl' - Clears The Terminal/Screen\n"
                " 'ip' - shows your various ip addresses\n"
                " 'color' - Changes the color of the terminal (only works in CMD mode)\n"
                " 'cmd-md' - Toggles CMD mode on/off\n"
            )
        elif x == 'cl':
            if inputxt == '>>> ':
                os.system('cls' if os.name == 'nt' else 'clear')
            elif inputxt == '[CMD]->>> ':
                print('This command only works in Normal mode')
        elif x == 'ip':
            if inputxt == '>>> ':
                os.system('ipconfig' if os.name == 'nt' else 'ip addr')
            elif inputxt == '[CMD]->>> ':
                print('Error 3')
        elif x == 'color':
            if inputxt == '>>> ':
                print("NOTE: to use this feature you will need to turn on cmd mode")
            elif inputxt == '[CMD]->>> ':
                os.system('color')
        elif x == 'cmd-md':
            if inputxt == '[CMD]->>> ':
                inputxt = '>>> '
                print("CMD mode off")
            elif inputxt == '>>> ':
                inputxt = '[CMD]->>> '
                print("CMD mode on")
            
        elif inputxt == '[CMD]->>> ':
            try:
                os.system(x)
            except Exception as e:
                print(f"Error: {e}")
        else:
            print("Invalid command. Type 'help' for available commands.")

    



        

def AI_Bot():
    print("AI Chat Bot not implemented yet, We are very sorry (estimated implement date: 6 days)")

def rand_num_gen():
    print("****************************\n*  Random Number Generator *\n****************************")
    choice = input("Number Range (Format [ <number> <,> <number> ] Example(1,10) (No Spaces) ) >>> ")
    start, end = map(int, choice.split(','))
    rand_num_gen = random.randint(start, end)
    print(rand_num_gen)
    print('----------------')
    print("Press 'e' To Continue")
    while True:
        if keyboard.is_pressed('e'):
            main()
            break

def main():
    text = """
_________ _______     _________ _______  _______  _        _______ 
\__   __/(  ____ \    \__   __/(  ___  )(  ___  )( \      (  ____ |
   ) (   | (    \/       ) (   | (   ) || (   ) || (      | (    \/
   | |   | (_____  _____ | |   | |   | || |   | || |      | (_____ 
   | |   (_____  )(_____)| |   | |   | || |   | || |      (_____  )
   | |         ) |       | |   | |   | || |   | || |            ) |
   | |   /\____) |       | |   | (___) || (___) || (____/\/\____) |
   )_(   \_______)       )_(   (_______)(_______)(_______/\_______)
                                                                   
"""

    choices = """***************************************************************************************
#  - 1) Password Generator -  2)  Banner Generator - 3)  Calculator -                #
#  - 4)  Windows Tools -   5)  YouTube Downloader - 6) Tiktok Downloader  -           #
# - 7)   Custom Terminal - 8)  AI Chat Bot - 9)  Random Number Generator  -           #
***************************************************************************************"""

    print(color_gradient(text))
    print(color_gradient(choices))

    x = input(">>> ")

    if x == '1':
        pass_gen()
    elif x == '2':
        banner_gen()
    elif x == '3':
        cal()
    elif x == '4':
        win_tools()
    elif x == '5':
        yt_downloader()
    elif x == '6' :
        tt_downloader()
    elif x == '7':
        cus_terminal()
    elif x == '8':
        AI_Bot()
    elif x == '9':
        rand_num_gen()
    elif x == 'xxtxx__FREE-PRO':
        print("Pro Active")
        pro = True
    elif x == 'ai-free':
        ai_active = True
    elif x == 'wuhqfbrhfbirbfvfjrfu98417398enf34oi4u98rrf-v,dlb-vv%&%$&^@#bREE%@%TfttrerTEW4t3GVehTE$%$%$Ggh':
        dcl()
    elif x == '100-AI-creds':
        credits = credits + 100
    elif x == 'intss':
        intall-TS()
    elif x == 'Set Security' or 'set security':
        setsecurity()
    elif x == 'psdpoif213asd234gd54sad54qwegqe123dewf3erwwgargegtrjhtihesiitushyustdsb!@#$%^&*()':
        Wifi_mode = True
    elif x == 'DEV_MODE':
        print("Dev Mode Active^")
        DevMode = True
    elif x == 'Daily-creds':
        daily-creds()
    else:
        print("ERROR 1 : Invalid Input ")
        main()

if __name__ == "__main__":
    main()
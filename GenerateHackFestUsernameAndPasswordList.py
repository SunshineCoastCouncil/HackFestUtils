#!/usr/bin/python2
import sys, string, os

characters_for_passwords = string.letters + string.digits + "!@#$%^&*()-=_+[]{}\|;:<>/?"
password_length = 10
number_of_users = 100

def generate_password():
  password = ''
  for i in range(10):
    password += characters_for_passwords[ord(os.urandom(1)) % len(characters_for_passwords)]
  return password

for i in range(number_of_users):
  with open("HackFestUserNameAndPasswordList.csv", "at") as f:
    f.write("hackfest" + str(i+1) + "," + generate_password() + "\n")

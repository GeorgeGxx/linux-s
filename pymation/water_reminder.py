# Creating Daily Reminders
import time

def water_reminder():
    while True:
        print("Time to drink water!")
        time.sleep(7200)  # Remind every 2 hours

water_reminder()
# Auto-Generate Daily Reports
import datetime
import aiofiles
import asyncio

async def generate_report(data):
    today = datetime.date.today()
    filename = f"daily_report_{today}.txt"
    async with aiofiles.open(filename, 'w') as file:
        await file.write(f"Report for {today}\n")
        await file.write("\n".join(data))
    print(f"Report generated: {filename}")

data = ["Task 1: Completed", "Task 2: Pending", "Task 3: Completed"]
asyncio.run(generate_report(data))
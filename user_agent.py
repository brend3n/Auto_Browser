from fake_useragent import UserAgent
def run():
    ua = UserAgent()
    # Get a random browser user-agent string
    print(ua.random)
    
if __name__ == "__main__":
   run()
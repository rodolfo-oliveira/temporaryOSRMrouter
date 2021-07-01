import requests, json, time


def directions(self, origin: str, destination: str, mode: str, arrival_time):
    # There are more options available. These are just some.
    options = dict(fromPlace=origin, toPlace=destination, arriveBy=1, time=arrival_time, date='06-16-2021', mode=mode,
				   clampInitialWait=0, numItineraries=1, wheelchair=False)

    # time script
    start_time = time.time()

    # send to server and get data
    data = requests.get("http://localhost:8080/otp/routers/saopaulo/plan", params=options).json()


    travel_duration = data['plan']['itineraries'][0]['duration']
    travel_distance = 0
    for k in range(len(data['plan']['itineraries'][0]['legs'])):
        travel_distance = travel_distance + data['plan']['itineraries'][0]['legs'][k]['distance']*0.3047992424196


    # print computation time
    print("----------------")
    print (time.time() - start_time)

    return {'travel_duration': travel_duration, 'travel_distance': travel_distance}



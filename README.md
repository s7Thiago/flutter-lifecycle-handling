# Flutter Life Cycle Handling

This project is a showcase implementation of app life-cycles on a Flutter application.

A few resources to get you started if this is your first Flutter project:

- the app contains a Timer that automatically increments a text on the UI
- The Timer pauses when the application is minimized
- The timer continues when the application is resumed
- The application state go to inactive when in screen divide mode

## App Life Cycle States

> ### **resumed**
>
>> - Visible in foreground
>> - Responding to user
>
> ___
>
> ### **paused**
>
> the application is minimized.
>
>> - Not visible
>> - No response
>> - Background
>
> ___
>
> ### **inactive**
>
> the application is visible but not responding to user interactions.
>
>> - Visible in foreground
>> - No response
>
> ___
>
> ### **detached**
>
> the app screen is not visible to user because is being created/destroyed
>
>> - Not visible
>> - Not visible
>> - Being created/destroyed
>
> ___
> The three main states are resumed, paused and inactive
>
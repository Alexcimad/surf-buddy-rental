import flatpickr from "flatpickr";

const initCalendar = () => {
    console.log("ok")
    flatpickr('#calendar-range', {
        "mode": "range"
    });
}

export {initCalendar};
import flatpickr from "flatpickr";

const initCalendar = () => {
    flatpickr('.calendar-range', {
        "mode": "range"
    });
}

export {initCalendar};
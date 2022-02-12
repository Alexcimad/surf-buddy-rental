import flatpickr from "flatpickr";

const initCalendar = () => {
    flatpickr('.calendar-range', {
        "mode": "range"
    });
    flatpickr('.calendar-pick');
}

export {initCalendar};
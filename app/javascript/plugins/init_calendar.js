import flatpickr from "flatpickr";

const initCalendar = () => {
    flatpickr('.calendar-range', {
        "mode": "range",
        altInput: true,
        altFormat: "F j, Y",
        dateFormat: "Y-m-d"
    });
    flatpickr('.calendar-pick', {
        altInput: true,
        altFormat: "F j, Y",
        dateFormat: "Y-m-d"
    });   
}

export {initCalendar};
import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css';
import "../plugins/flatpickr";

import { initAutocomplete } from '../plugins/init_autocomplete';
import { initMapbox } from '../plugins/init_mapbox';

initAutocomplete();
initMapbox();
$('.carousel').carousel();


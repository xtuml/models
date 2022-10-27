self.addEventListener('MicrowaveOven::UI::open_door', (evt) => {
  Module.ccall('MicrowaveOven_UI_open_door');
});

self.addEventListener('MicrowaveOven::UI::close_door', (evt) => {
  Module.ccall('MicrowaveOven_UI_close_door');
});

self.addEventListener('MicrowaveOven::UI::increase_power', (evt) => {
  Module.ccall('MicrowaveOven_UI_increase_power');
});

self.addEventListener('MicrowaveOven::UI::decrease_power', (evt) => {
  Module.ccall('MicrowaveOven_UI_decrease_power');
});

self.addEventListener('MicrowaveOven::UI::specify_cooking_period', (evt) => {
  Module.ccall('MicrowaveOven_UI_specify_cooking_period', null, ['number'], evt.detail);
});

self.addEventListener('MicrowaveOven::UI::start_pressed', (evt) => {
  Module.ccall('MicrowaveOven_UI_start_pressed');
});

self.addEventListener('MicrowaveOven::UI::cancel_pressed', (evt) => {
  Module.ccall('MicrowaveOven_UI_cancel_pressed');
});

const sendSignal = (signalId, ...args) => {
  dispatchEvent(new CustomEvent(signalId, {detail: args}));
}

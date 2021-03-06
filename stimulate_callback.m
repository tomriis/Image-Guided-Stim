function stimulate_callback(app)
    Resource = evalin('base','Resource');
    pos = getPosition(Resource.parameters.target_point);
    disp(pos)
    VsClose;
    ImageAcquisition('target_position',pos,...
    'stim_freq',app.frequency,...
    'duty_cycle',app.duty_cycle,...
    'duration',app.duration,...
    'prf',app.pulse_repetition_frequency,...
    'TW',app.TW,...
    'GUI_handle',Resource.parameters.GUI_handle);

end
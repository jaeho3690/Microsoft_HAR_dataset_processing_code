dataFileSingleActivity = fullfile('exercise_data.50.0000_singleonly.mat');
fprintf(1,'Loading single-activity data...\n');
exerciseDataSingleActivity = load(dataFileSingleActivity);

% The column names for the single-activity data are here:
activities = exerciseDataSingleActivity.exerciseConstants.activities';
nActivityTypes = length(activities);
nParticipants = size(exerciseDataSingleActivity.subject_data,1);



for participant_idx = 1: nParticipants
    for exercise_idx = 1: nActivityTypes
        recordings = exerciseDataSingleActivity.subject_data{participant_idx,exercise_idx};
        if ~isempty(recordings);
            nRecordings = length(recordings);
            fprintf('%d',nRecordings)
            for recording_idx = 1: nRecordings;
                recording = recordings(recording_idx);
                accel = recording.data.accelDataMatrix;
                gyro = recording.data.gyroDataMatrix;
                [row_size, column_size] = size(accel)
                empty_participant = ones(row_size,1) * participant_idx
                empty_recording = ones(row_size,1) * recording_idx
                empty_exercise= ones(row_size,1) * exercise_idx
                fullsensor = horzcat(accel,gyro,empty_participant,empty_recording,empty_exercise);
                formatSpec = 'participant_%d_%d_%d.csv'
                filename = sprintf(formatSpec,participant_idx,recording_idx,exercise_idx)
                writematrix(fullsensor,filename)
            end
            
                
            
            
        end
    end
end

            
        
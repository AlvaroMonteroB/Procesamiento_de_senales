classdef Cancion
    %UNTITLED Summary of this class goes here
    %   Detailed explanation goes here

    properties
        name
        audio
        num_fragment
        fft_song
        fs_song
        duration
        correlaciones
        matrix_fragment
        matrix_fragment_fft
        frag_time
    end

    methods
        function obj = Cancion(name,path,fragment_time)
            obj.name=name;
            obj.frag_time=fragment_time;
            [obj.audio,obj.fs_song]=audioread(fullfile(path,name));
            obj.duration=size(obj.audio,1)/obj.fs_song;
            obj.num_fragment=floor(obj.duration/fragment_time);
            obj.matrix_fragment=cell(1,obj.num_fragment);
            sample_time=obj.fs_song*fragment_time;
            for i=1:obj.num_fragment%Creamos los fragmentos de la canción
                if i==1
                    obj.matrix_fragment{i}=obj.audio(1:sample_time);
                
                else
                    obj.matrix_fragment{i}=obj.audio(sample_time*(i-1)+1:sample_time*i);
                end
            end
            obj.matrix_fragment_fft=fragment_fft(obj);
        end


        function mat_frag=fragment_fft(obj)
            fragment_fft=cell(1,obj.num_fragment);
            %disp(class(obj.matrix_fragment_fft))
            %disp(fprintf('Cancion %s',obj.name))
            %disp(fprintf('Fragmentos %d',obj.num_fragment))
            for i=1:obj.num_fragment
                fragment_fft{i}=real(fft(obj.matrix_fragment{i}));
                %disp(length(obj.matrix_fragment_fft{i}))
            end
            mat_frag=fragment_fft;
        
        end

        function result=CrCorr(obj,index,input)
                 disp(class(obj.matrix_fragment_fft));
                 
                 [corr_g,des]=xcorr(input,obj.matrix_fragment_fft{index});
                 result=max(corr_g);
                 
        end

    end
end
classdef Cancion
    %UNTITLED Summary of this class goes here
    %   Detailed explanation goes here

    properties
        name
        song
        num_fragment
        fft_song
        fs_song
        duration
        correlaciones
    end

    methods
        function obj = Constructor(name,path,fragment_time)
            obj.name=name;
            [obj.song,obj.fs_song]=audioread(fullfile(path,name));
            obj.duration=size(obj.song,1)/obj.fs_song;
            obj.num_fragment=floor(obj.duration/fragment_time)
            obj.fft_song=fft(obj.song);
            obj.correlaciones=zeros(1,obj.num_fragment);
            
        end

    end
end
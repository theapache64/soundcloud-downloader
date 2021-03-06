package com.theah64.scd.models;

/**
 * Created by theapache64 on 26/12/16.
 */
public class DownloadRequest {
    private final String id, trackId, requestId, clientId, downloadLink;

    public DownloadRequest(String id, String trackId, String requestId, String clientId, String downloadLink) {
        this.id = id;
        this.trackId = trackId;
        this.requestId = requestId;
        this.clientId = clientId;
        this.downloadLink = downloadLink;
    }

    public String getRequestId() {
        return requestId;
    }

    public String getId() {
        return id;
    }

    public String getTrackId() {
        return trackId;
    }

    public String getDownloadLink() {
        return downloadLink;
    }

    public String getClientId() {
        return clientId;
    }
}

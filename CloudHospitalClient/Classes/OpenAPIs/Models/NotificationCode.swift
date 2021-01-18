//
// NotificationCode.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public enum NotificationCode: String, Codable, CaseIterable {
    case welcomeEmail = "WelcomeEmail"
    case directMessageSent = "DirectMessageSent"
    case bookingNew = "BookingNew"
    case bookingUpdated = "BookingUpdated"
    case bookingRejected = "BookingRejected"
    case bookingApproved = "BookingApproved"
    case bookingPaid = "BookingPaid"
    case bookingCanceled = "BookingCanceled"
    case bookingRefundRequested = "BookingRefundRequested"
    case bookingRefunded = "BookingRefunded"
    case consultationNew = "ConsultationNew"
    case consultationUpdated = "ConsultationUpdated"
    case consultationRejected = "ConsultationRejected"
    case consultationApproved = "ConsultationApproved"
    case consultationPaid = "ConsultationPaid"
    case consultationCanceled = "ConsultationCanceled"
    case consultationRefundRequested = "ConsultationRefundRequested"
    case consultationRefunded = "ConsultationRefunded"
}
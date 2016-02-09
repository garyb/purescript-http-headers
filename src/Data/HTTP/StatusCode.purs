module Data.HTTP.StatusCode
  ( StatusCode(..)
  , ExtendedStatusCode()
  , runExtendedStatusCode
  , toInt
  , fromInt
  , print
  ) where

import Prelude

import Data.Either (Either(..), either)
import Data.Generic (Generic, gCompare)

data StatusCode
  = Continue
  | SwitchingProtocols
  | OK
  | Created
  | Accepted
  | NonAuthoritativeInformation
  | NoContent
  | ResetContent
  | PartialContent
  | MultipleChoices
  | MovedPermanently
  | Found
  | SeeOther
  | NotModified
  | UseProxy
  | TemporaryRedirect
  | BadRequest
  | Unauthorized
  | PaymentRequired
  | Forbidden
  | NotFound
  | MethodNotAllowed
  | NotAcceptable
  | ProxyAuthenticationRequired
  | RequestTimeout
  | Conflict
  | Gone
  | LengthRequired
  | PreconditionFailed
  | PayloadTooLarge
  | URITooLong
  | UnsupportedMediaType
  | RangeNotSatisfiable
  | ExpectationFailed
  | UpgradeRequired
  | InternalServerError
  | NotImplemented
  | BadGateway
  | ServiceUnavailable
  | GatewayTimeout
  | HTTPVersionNotSupported

derive instance genericStatusCode :: Generic StatusCode

instance eqStatusCode :: Eq StatusCode where
  eq Continue Continue = true
  eq SwitchingProtocols SwitchingProtocols = true
  eq OK OK = true
  eq Created Created = true
  eq Accepted Accepted = true
  eq NonAuthoritativeInformation NonAuthoritativeInformation = true
  eq NoContent NoContent = true
  eq ResetContent ResetContent = true
  eq PartialContent PartialContent = true
  eq MultipleChoices MultipleChoices = true
  eq MovedPermanently MovedPermanently = true
  eq Found Found = true
  eq SeeOther SeeOther = true
  eq NotModified NotModified = true
  eq UseProxy UseProxy = true
  eq TemporaryRedirect TemporaryRedirect = true
  eq BadRequest BadRequest = true
  eq Unauthorized Unauthorized = true
  eq PaymentRequired PaymentRequired = true
  eq Forbidden Forbidden = true
  eq NotFound NotFound = true
  eq MethodNotAllowed MethodNotAllowed = true
  eq NotAcceptable NotAcceptable = true
  eq ProxyAuthenticationRequired ProxyAuthenticationRequired = true
  eq RequestTimeout RequestTimeout = true
  eq Conflict Conflict = true
  eq Gone Gone = true
  eq LengthRequired LengthRequired = true
  eq PreconditionFailed PreconditionFailed = true
  eq PayloadTooLarge PayloadTooLarge = true
  eq URITooLong URITooLong = true
  eq UnsupportedMediaType UnsupportedMediaType = true
  eq RangeNotSatisfiable RangeNotSatisfiable = true
  eq ExpectationFailed ExpectationFailed = true
  eq UpgradeRequired UpgradeRequired = true
  eq InternalServerError InternalServerError = true
  eq NotImplemented NotImplemented = true
  eq BadGateway BadGateway = true
  eq ServiceUnavailable ServiceUnavailable = true
  eq GatewayTimeout GatewayTimeout = true
  eq HTTPVersionNotSupported HTTPVersionNotSupported = true
  eq _ _ = false

instance ordStatusCode :: Ord StatusCode where
  compare = gCompare

instance showStatusCode :: Show StatusCode where
  show Continue = "Continue"
  show SwitchingProtocols = "SwitchingProtocols"
  show OK = "OK"
  show Created = "Created"
  show Accepted = "Accepted"
  show NonAuthoritativeInformation = "NonAuthoritativeInformation"
  show NoContent = "NoContent"
  show ResetContent = "ResetContent"
  show PartialContent = "PartialContent"
  show MultipleChoices = "MultipleChoices"
  show MovedPermanently = "MovedPermanently"
  show Found = "Found"
  show SeeOther = "SeeOther"
  show NotModified = "NotModified"
  show UseProxy = "UseProxy"
  show TemporaryRedirect = "TemporaryRedirect"
  show BadRequest = "BadRequest"
  show Unauthorized = "Unauthorized"
  show PaymentRequired = "PaymentRequired"
  show Forbidden = "Forbidden"
  show NotFound = "NotFound"
  show MethodNotAllowed = "MethodNotAllowed"
  show NotAcceptable = "NotAcceptable"
  show ProxyAuthenticationRequired = "ProxyAuthenticationRequired"
  show RequestTimeout = "RequestTimeout"
  show Conflict = "Conflict"
  show Gone = "Gone"
  show LengthRequired = "LengthRequired"
  show PreconditionFailed = "PreconditionFailed"
  show PayloadTooLarge = "PayloadTooLarge"
  show URITooLong = "URITooLong"
  show UnsupportedMediaType = "UnsupportedMediaType"
  show RangeNotSatisfiable = "RangeNotSatisfiable"
  show ExpectationFailed = "ExpectationFailed"
  show UpgradeRequired = "UpgradeRequired"
  show InternalServerError = "InternalServerError"
  show NotImplemented = "NotImplemented"
  show BadGateway = "BadGateway"
  show ServiceUnavailable = "ServiceUnavailable"
  show GatewayTimeout = "GatewayTimeout"
  show HTTPVersionNotSupported = "HTTPVersionNotSupported"

newtype ExtendedStatusCode = ExtendedStatusCode Int

runExtendedStatusCode :: ExtendedStatusCode -> Int
runExtendedStatusCode (ExtendedStatusCode n) = n

derive instance genericExtendedStatusCode :: Generic ExtendedStatusCode

instance eqExtendedStatusCode :: Eq ExtendedStatusCode where
  eq (ExtendedStatusCode n1) (ExtendedStatusCode n2) = n1 == n2

instance ordExtendedStatusCode :: Ord ExtendedStatusCode where
  compare = gCompare

instance showExtendedStatusCode :: Show ExtendedStatusCode where
  show (ExtendedStatusCode n) = "(ExtendedStatusCode " <> show n <> ")"

toInt :: Either StatusCode ExtendedStatusCode -> Int
toInt = either toInt' runExtendedStatusCode

toInt' :: StatusCode -> Int
toInt' sc =
  case sc of
    Continue -> 100
    SwitchingProtocols -> 101
    OK -> 200
    Created -> 201
    Accepted -> 202
    NonAuthoritativeInformation -> 203
    NoContent -> 204
    ResetContent -> 205
    PartialContent -> 206
    MultipleChoices -> 300
    MovedPermanently -> 301
    Found -> 302
    SeeOther -> 303
    NotModified -> 304
    UseProxy -> 305
    TemporaryRedirect -> 307
    BadRequest -> 400
    Unauthorized -> 401
    PaymentRequired -> 402
    Forbidden -> 403
    NotFound -> 404
    MethodNotAllowed -> 405
    NotAcceptable -> 406
    ProxyAuthenticationRequired -> 407
    RequestTimeout -> 408
    Conflict -> 409
    Gone -> 410
    LengthRequired -> 411
    PreconditionFailed -> 412
    PayloadTooLarge -> 413
    URITooLong -> 414
    UnsupportedMediaType -> 415
    RangeNotSatisfiable -> 416
    ExpectationFailed -> 417
    UpgradeRequired -> 426
    InternalServerError -> 500
    NotImplemented -> 501
    BadGateway -> 502
    ServiceUnavailable -> 503
    GatewayTimeout -> 504
    HTTPVersionNotSupported -> 505

fromInt :: Int -> Either StatusCode ExtendedStatusCode
fromInt i =
  case i of
    100 -> Left Continue
    101 -> Left SwitchingProtocols
    200 -> Left OK
    201 -> Left Created
    202 -> Left Accepted
    203 -> Left NonAuthoritativeInformation
    204 -> Left NoContent
    205 -> Left ResetContent
    206 -> Left PartialContent
    300 -> Left MultipleChoices
    301 -> Left MovedPermanently
    302 -> Left Found
    303 -> Left SeeOther
    304 -> Left NotModified
    305 -> Left UseProxy
    307 -> Left TemporaryRedirect
    400 -> Left BadRequest
    401 -> Left Unauthorized
    402 -> Left PaymentRequired
    403 -> Left Forbidden
    404 -> Left NotFound
    405 -> Left MethodNotAllowed
    406 -> Left NotAcceptable
    407 -> Left ProxyAuthenticationRequired
    408 -> Left RequestTimeout
    409 -> Left Conflict
    410 -> Left Gone
    411 -> Left LengthRequired
    412 -> Left PreconditionFailed
    413 -> Left PayloadTooLarge
    414 -> Left URITooLong
    415 -> Left UnsupportedMediaType
    416 -> Left RangeNotSatisfiable
    417 -> Left ExpectationFailed
    426 -> Left UpgradeRequired
    500 -> Left InternalServerError
    501 -> Left NotImplemented
    502 -> Left BadGateway
    503 -> Left ServiceUnavailable
    504 -> Left GatewayTimeout
    505 -> Left HTTPVersionNotSupported
    _ -> Right (ExtendedStatusCode i)

print :: Either StatusCode ExtendedStatusCode -> String
print = show <<< toInt

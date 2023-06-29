#pragma once
#include <exception>
#include <iostream>
#include <string>

namespace http {

class exception : public std::exception {
public:
    exception(const int& code)
    {
        this->code = code;
        switch (this->code) {
        case 400:
            this->status = "Bad Request";
            break;
        case 401:
            this->status = "Unauthorized";
            break;
        case 402:
            this->status = "Payment Required";
            break;
        case 403:
            this->status = "Forbidden";
            break;
        case 404:
            this->status = "Not Found";
            break;
        case 405:
            this->status = "Method Not Allowed";
            break;
        case 406:
            this->status = "Not Acceptable";
            break;
        case 407:
            this->status = "Proxy Authentication Required";
            break;
        case 408:
            this->status = "Request Timeout";
            break;
        case 409:
            this->status = "Conflict";
            break;
        case 410:
            this->status = "Gone";
            break;
        case 411:
            this->status = "Length Required";
            break;
        case 412:
            this->status = "Precondition Failed";
            break;
        case 413:
            this->status = "Payload Too Large";
            break;
        case 414:
            this->status = "URI Too Long";
            break;
        case 415:
            this->status = "Unsupported Media Type";
            break;
        case 416:
            this->status = "Range Not Satisfiable";
            break;
        case 417:
            this->status = "Expectation Failed";
            break;
        case 418:
            this->status = "I'm a teapot";
            break;
        case 421:
            this->status = "Misdirected Request";
            break;
        case 422:
            this->status = "Unprocessable Entity";
            break;
        case 423:
            this->status = "Locked";
            break;
        case 424:
            this->status = "Failed Dependency";
            break;
        case 425:
            this->status = "Too Early";
            break;
        case 426:
            this->status = "Upgrade Required";
            break;
        case 428:
            this->status = "Precondition Required";
            break;
        case 429:
            this->status = "Too Many Requests";
            break;
        case 431:
            this->status = "Request Header Fields Too Large";
            break;
        case 451:
            this->status = "Unavailable For Legal Reasons";
            break;
        case 500:
            this->status = "Internal Server Error";
            break;
        case 501:
            this->status = "Not Implemented";
            break;
        case 502:
            this->status = "Bad Gateway";
            break;
        case 503:
            this->status = "Service Unavailable";
            break;
        case 504:
            this->status = "Gateway Timeout";
            break;
        case 505:
            this->status = "HTTP Version Not Supported";
            break;
        case 506:
            this->status = "Variant Also Negotiates";
            break;
        case 507:
            this->status = "Insufficient Storage";
            break;
        case 508:
            this->status = "Loop Detected";
            break;
        case 510:
            this->status = "Not Extended";
            break;
        case 511:
            this->status = "Network Authentication Required";
            break;
        default:
            this->status = "Unknown";
            break;
        }

        this->message.append(std::to_string(this->code));
        this->message.append(" ");
        this->message.append(this->status);
    }

    virtual const char* what() const noexcept override { return this->message.c_str(); }
    const int& status_code() {return this->code;}
private:
    std::string status, message;
    int code;
};

}

#include <boost/program_options.hpp>

#include <boost/log/trivial.hpp>
#include <boost/log/common.hpp>  
#include <boost/log/expressions.hpp>  
#include <boost/log/utility/setup/file.hpp>  
#include <boost/log/utility/setup/console.hpp>  
#include <boost/log/utility/setup/common_attributes.hpp>  
#include <boost/log/attributes/timer.hpp>  
#include <boost/log/attributes/named_scope.hpp>  
#include <boost/log/sources/logger.hpp>  
#include <boost/log/support/date_time.hpp>

using namespace std;

using namespace boost::program_options;

namespace logging   = boost::log;
namespace sinks     = boost::log::sinks;
namespace expr      = boost::log::expressions;
namespace keywords  = boost::log::keywords;

typedef struct option_s {
    <+ OPTION +>
    <+ OPTION +>
} OPTION;
OPTION _option;

int do_init(int argc, char *argv[]);
int do_process();
int do_exit();

int main(int argc, char* argv[]) {
    do_init(argc, argv);
    do_process();
    do_exit();
    return 0;
}

int do_init(int argc, char *argv[]) {
    options_description opts("<+ EXE-NAME +>");
    opts.add_options()
        ("<+ KEY +>",
         value<string>(&_option.<+ VAR +>)->default_value("<+ VAL +>"),
         "")
        ("<+ KEY +>",
         value<uint32_t>(&_option.<+ VAR +>)->default_value(0),
         "")
        ("help,h", "")
        ;

    variables_map vm;
    store(parse_command_line(argc, argv, opts), vm);
    notify(vm);
    if (vm.count("help") || vm.count("h")) {
        cout << opts << endl;
        exit(0);
    }

    //  export LC_ALL="C"
    logging::add_file_log(
            keywords::file_name = _option.log,
            keywords::rotation_size = 50 * 1024 * 1024,
            keywords::open_mode = std::ios::app,
            keywords::format = (
                expr::stream
                << expr::format_date_time< boost::posix_time::ptime >(
                    "TimeStamp", "%Y-%m-%d %H:%M:%S")
                << "[" << expr::attr< uint32_t >("LineID") << "]"
                << "[" << logging::trivial::severity << "]: "
                << expr::smessage)
            );
    logging::add_common_attributes();
    logging::core::get()->set_filter(
            logging::trivial::severity >= logging::trivial::info
            );

    BOOST_LOG_TRIVIAL(info) << "<+ KEY +>: " << _option.<+ VAR +>;
}

int do_process() {
    // TODO:
}

int do_exit() {
    // TODO:
}

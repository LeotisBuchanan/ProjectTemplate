\name{NEWS}
\title{News for Package 'ProjectTemplate'}
\section{Changes in ProjectTemplate version 0.5 (2014-03-05)}{
  \subsection{Breaking changes}{
    \itemize{
      \item \code{project.info} is now deprecated in favor of the new function \code{get.project()}.
         Accessing \code{project.info} will work but emit a deprecation warning once per
         session (#39).
    }
  }
  \subsection{Features}{
    \itemize{
      \item Attempting to load a missing package when reading data will lead to a
        user-friendly error message (#26).
      \item Export existing \code{translate.dcf} function, useful for implementing custom readers (#59).
      \item Add new function \code{.add.extension.} This allows users to create custom readers
         for extensions, either locally in a project or as packages (#59).
    }
  }
  \subsection{Internal}{
    \itemize{
      \item Fix CRAN warnings concerning use of \code{ProjectTemplate:::} qualification
         (#56).
      \item Updated author information in DESCRIPTION file (#40).
      \item Store templates for empty projects in tar files instead of storing
         the entire directory structure per CRAN request and to avoid having to build
         with the \code{--keep-empty-dirs} switch (#41).
    }
  }
}
\section{Changes in ProjectTemplate version 0.4-5 (2014-02-11)}{
  \itemize{
    \item New maintainers: Kirill Müller  <mail@kirill-mueller.de>, Kenton White  <jkentonwhite@gmail.com>
    \item Allow string interpolation of R functions in sql queries
    \item Added a JDBC database wrapper for accessing PostgreSQL databases hosted by Heroku (#20)
    \item JDBC connection can now use path to jar stored in CLASSPATH
    \item project.info is stored in the global environment again (reverted change from
       0.4-4); the active binding seemed to work for the tests but not from outside
       the package
    \item create.project now works if the directory exists. Merging with a non-empty
       directory is supported by setting the new parameter merge.strategy.
  }
}
\section{Changes in ProjectTemplate version 0.4-4 (2013-08-11)}{
  \itemize{
    \item Fix CRAN checks (@krlmlr).
    \item project.info is now an active binding to avoid writing to the global
       environment (@krlmlr).
    \item Reenabled xlsx.reader (@krlmlr).
    \item Added JDBC support to sql.reader (@joshbode, #12).
    \item Various MySQL improvements (@cortex, #10).
    \item Fix "Argument port must be an integer value" when using port number for mysql
       driver (@cortex, #7).
    \item Tentative CSV2 support.
  }
}
\section{Changes in ProjectTemplate version 0.4-3 (2012-08-11)}{
  \itemize{
    \item Added optional recursive data directory loading using a 'recursive_loading' setting.
    \item Added basic Oracle support (with tnsnames, no host/port) (@matteoredaelli, #6).
  }
}
\section{Changes in ProjectTemplate version 0.4-2 (2012-05-12)}{
  \itemize{
    \item Had to disable xlsx.reader temporarily because it does not build for 2.15.
  }
}
\section{Changes in ProjectTemplate version 0.4-1 (2011-11-23)}{
  \itemize{
    \item Added 'eda.R' example file in 'src/' directory.
    \item Allow loading from 'cache/' without loading from 'data/' through 'cache_loading' setting.
    \item Revised documentation.
  }
}
\section{Changes in ProjectTemplate version 0.3-6 (2011-07-13)}{
  \itemize{
    \item Added Postgres support through RPostgreSQL
    \item Very rough ODBC support. See example in ProjectTemplate:::sql.reader documentation.
    \item '.dat' files are now read as if they were '.wsv' files.
    \item Revised documentation.
  }
}
\section{Changes in ProjectTemplate version 0.3-5 (2011-07-08)}{
  \itemize{
    \item Added a cache.project() function.
    \item 'as_factors' configuration option suppresses automatic character-to-factor conversion.
    \item Implemented .zip support using temporary files.
    \item Added .mp3 support through the tuneR package.
    \item Added .ppm support through the pixmap package.
    \item 'data_tables' configuration option automatically translates data sets into data.tables.
    \item Added unit tests for SPSS, Stata and SAS file formats.
  }
}
\section{Changes in ProjectTemplate version 0.3-4 (2011-07-03)}{
  \itemize{
    \item Increased SQLite3 support
    \item Load all tables from SQLite3 database using a .sql file: set table = *
    \item Load all tables from SQLite3 database automatically using .db extension
    \item Added a .file type that can load files outside of the project directory.
    \item Removed run.tests(). Use test.project().
    \item Added a stub.tests() function that autogenerates tests for helper functions.
    \item Added a show.project() function that gives all known information about a project's internal state.
  }
}
\section{Changes in ProjectTemplate version 0.3-3 (2011-06-28)}{
  \itemize{
    \item Added a reload.project() function.
    \item Improved error handling.
    \item Renamed utilities.R to helpers.R.
    \item Fixed a bug in cache().
  }
}
\section{Changes in ProjectTemplate version 0.3-2 (2011-06-27)}{
  \itemize{
    \item Added new *Reader functions.
  }
}
\section{Changes in ProjectTemplate version 0.3-1 (2011-06-24)}{
  \itemize{
    \item Switched configuration system over to DCF format.
    \item Ability to create full projects or minimal projects.
    \item Switched print() calls to message() calls.
    \item Moved *Reader functionality into separate functions that users can override.
    \item Fixed a bug in cache().
  }
}
\section{Changes in ProjectTemplate version 0.2-1 (2010-12-03)}{
  \itemize{
    \item Moved boot.R's logic into functions and configuration files.
    \item Added SQLite support using the RSQLite package.
    \item Cleaned up the database connection and disconnection code.
    \item Changed list of packages listed as dependencies, so that even more are suggestions.
    \item Added new configuration settings in config/global.yaml.
    \item Data is now loaded from a cache/ directory and then the traditional data/ directory.
    \item Added log4r integration, which is configurable and turned off by default.
    \item Added a sample preprocessing script.
    \item Added a cache/ directory.
    \item Added a config/ directory.
    \item Added a logs/ directory.
    \item Added a munge/ directory.
    \item Added a src/ directory.
    \item Fixed a bug in clean.variable.name() for variable names that start with numbers.
    \item Added XSLX support.
  }
}
\section{Changes in ProjectTemplate version 0.1-3 (2010-10-02)}{
  \itemize{
    \item Many changes to load_data.R.
    \item Added notices when data sets are autoloaded.
    \item Added autoload support for WSV (whitespace separated values) data files.
    \item Added autoload support for RData files.
    \item Added autoload support for compressed *SV files.
    \item Added autoload support for *SV files available through HTTP.
    \item Added autoload support for MySQl database tables.
    \item Added autoload support for SPSS and Stata files.
    \item Added test.project as an alias for run.tests().
    \item Changed list of packages listed as dependencies, so that many are now suggestions.
    \item load.project() does not autoload libraries that are not dependencies.
    \item Added a sample profiling script.
    \item Added a sample test that always passes to the default project.
    \item Added a basic show.updates() function for porting projects to newer releases of ProjectTemplate.
  }
}
\section{Changes in ProjectTemplate version 0.1-2 (2010-08-26)}{
  \itemize{
    \item Cleaned up documentation.
    \item Rewrote backend.
    \item Added load.package() and run.tests() functions.
  }
}
\section{Changes in ProjectTemplate version 0.1-1 (2010-08-24)}{
  \itemize{
    \item Maintainer: John Myles White  <jmw@johnmyleswhite.com>
    \item Initial release.
  }
}
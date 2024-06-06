# Postmortem: Login Service Outage - May 2024

## Issue Summary

If you're a fan of detective stories, grab your magnifying glass and trench coat! Join us on a thrilling ride as we uncover the root cause of a recent outage that affected our e-commerce website's login service.

**Duration of the Outage:** Between 10:00 AM and 11:30 AM EAT on May 6, 2024

**Impact:** The login service of our e-commerce website was down, affecting 50% of our users. Users attempting to log in were greeted with an error message instead of their shopping carts. They couldn't access their accounts or complete purchases, leading to widespread frustration.

**Root Cause:** A rogue configuration change caused a dastardly deadlock in the database, preventing the login service from accessing it. The issue was heroically resolved by rolling back the configuration change and restarting the database.

## Timeline

- **10:00 AM EAT:** The case began when our monitoring system blared an alert about a sudden spike in error rates for the login service.
- **10:02 AM EAT:** The engineering team donned their detective hats and began investigating.
- **10:05 AM EAT:** They discovered the login service wasn't responding to requests and tried the classic 'Have you tried turning it off and on again?' approach.
- **10:10 AM EAT:** Restarting the service was a red herring; further sleuthing suggested a possible database problem.
- **10:15 AM EAT:** High CPU usage on the database server was identified—our prime suspect.
- **10:20 AM EAT:** Attempts to optimize database queries and indexes turned out to be wild goose chases.
- **10:30 AM EAT:** The case was escalated to the senior engineering team and the database administrators—our seasoned detectives.
- **10:35 AM EAT:** They uncovered a configuration change that caused a deadlock, the true culprit behind the issue.
- **10:40 AM EAT:** The change was reversed, and the database was restarted, breaking the deadlock.
- **11:00 AM EAT:** The login service was restored, and users could log in and complete purchases once more.
- **11:30 AM EAT:** Case closed—the incident was declared resolved.

## Root Cause and Resolution

**Root Cause:** The villain of our story was a configuration change that caused a database deadlock, preventing the login service from accessing it. This deadlock was due to a misconfigured database index, which blocked queries and led to high CPU usage.

**Resolution:** The heroics involved rolling back the rogue configuration change and restarting the database. This freed the queries from their deadlock, allowing the login service to return to normal operation.

## Corrective and Preventative Measures

To ensure that such dastardly deeds do not happen again, we will:

- **Improve Monitoring:** Enhance the monitoring of database performance metrics to detect issues earlier, much like installing CCTV cameras in a bank.
- **Review and Test Configuration Changes:** Implement stricter review and testing protocols for database configuration changes before deploying them to production—think of it as running a dress rehearsal before the big show.
- **Training and Documentation:** Improve documentation and training for database administrators to ensure proper configuration management—knowledge is power, after all.
- **Increase Redundancy:** Add more redundancy and failover mechanisms to the login service to reduce the impact of similar incidents—backup plans for the backup plans.
- **Optimize Database Schema:** Review the database schema and query patterns to identify and address potential performance bottlenecks—let's keep things running smooth as butter.

**Specific Tasks:**

1. **Enhance Monitoring:**
   - Add monitoring on database query performance and CPU usage.
   - Implement alerts for abnormal spikes in error rates.

2. **Review Configuration Changes:**
   - Establish a protocol for peer review of database configuration changes.
   - Create a staging environment for testing configuration changes.

3. **Training and Documentation:**
   - Develop comprehensive training materials for database administrators.
   - Update documentation on database configuration best practices.

4. **Increase Redundancy:**
   - Set up database failover mechanisms.
   - Implement load balancing for the login service.

5. **Optimize Database Schema:**
   - Conduct a thorough review of current database indexes.
   - Optimize query patterns to reduce lock contention.

In conclusion, the outage of our e-commerce website's login service was caused by a misconfigured database index that resulted in a deadlock and high CPU usage. The incident was resolved by rolling back the configuration change and restarting the database. We will take corrective and preventative measures to improve monitoring, configuration management, and system redundancy to prevent similar incidents in the future.

Stay tuned for more updates, and remember: the game is afoot!
